#!perl -wT

use strict;
use warnings;
use Test::Most tests => 65;
# use Test::NoWarnings;	# Until DSTK is back

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

LIST: {
	SKIP: {
		if(!-e 't/online.enabled') {
			diag('Online tests disabled');
			skip('Online tests disabled', 64);
		}

		eval {
			require Test::Number::Delta;

			Test::Number::Delta->import;

			require Geo::Coder::CA;

			Geo::Coder::CA->import;

			# require Geo::Coder::Google::V3;

			# Geo::Coder::Google::V3->import;

			if($ENV{GMAP_KEY}) {
				require Geo::Coder::GooglePlaces::V3;

				Geo::Coder::GooglePlaces::V3->import;
			}

			require Geo::Coder::OSM;

			Geo::Coder::OSM->import;

			# require Geo::Coder::XYZ;

			# Geo::Coder::XYZ->import;

			require Geo::Coder::Postcodes;

			Geo::Coder::Postcodes->import();

			if($ENV{BMAP_KEY}) {
				require Geo::Coder::Bing;

				Geo::Coder::Bing->import;
			}
		};

		if($@) {
			diag($@);
			diag('Not enough geocoders installed - skipping tests');
			skip('Not enough geocoders installed', 64);
		}
		my $geocoderlist = new_ok('Geo::Coder::List')
			->push({ regex => qr/(Canada|USA|United States)$/, geocoder => new_ok('Geo::Coder::CA') })
			->push({ regex => qr/^\w+,\s*\w+,\s*(UK|United Kingdom|England)$/i, geocoder => new_ok('Geo::Coder::Postcodes') })
			# ->push(new_ok('Geo::Coder::XYZ'))
			# ->push(new_ok('Geo::Coder::Google::V3'))
			->push(new_ok('Geo::Coder::OSM'));

		if(my $key = $ENV{GMAP_KEY}) {
			$geocoderlist->push(Geo::Coder::GooglePlaces::V3->new(key => $key));
		}
		if(my $key = $ENV{BMAP_KEY}) {
			$geocoderlist->push(Geo::Coder::Bing->new(key => $key));
		}

		my $location = $geocoderlist->geocode('Silver Spring, MD, USA');
		ok(defined($location));
		is(ref($location), 'HASH', 'geocode should return a reference to a HASH');
		delta_within($location->{geometry}{location}{lat}, 38.99, 1e-1);
		delta_within($location->{geometry}{location}{lng}, -77.03, 1e-1);
		is(ref($location->{'geocoder'}), 'Geo::Coder::CA', 'Verify CA encoder is used');
		sleep(1);	# play nicely

		$location = $geocoderlist->geocode('Reading, Berkshire, England');
		delta_within($location->{geometry}{location}{lat}, 51.46, 1e-2);
		delta_within($location->{geometry}{location}{lng}, -0.97, 1e-2);
		is(ref($location->{'geocoder'}), 'Geo::Coder::Postcodes', 'Verify Postcodes encoder is used');
		sleep(1);	# play nicely

		$location = $geocoderlist->geocode(location => '8600 Rockville Pike, Bethesda MD, 20894 USA');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 38.99, 1e-1);
		delta_within($location->{geometry}{location}{lng}, -77.03, 1e-1);
		is(ref($location->{'geocoder'}), 'Geo::Coder::CA', 'Verify CA encoder is used');
		sleep(1);	# play nicely

		$location = $geocoderlist->geocode({ location => 'Rochester, Kent, United Kingdom' });
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.39, 1e-1);
		delta_within($location->{geometry}{location}{lng}, 0.51, 1e-1);
		is(ref($location->{'geocoder'}), 'Geo::Coder::OSM', 'Verify OSM encoder is used');
		sleep(1);	# play nicely

		$location = $geocoderlist->geocode({ location => 'Rochester, Kent, England' });
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.39, 1e-1);
		delta_within($location->{geometry}{location}{lng}, 0.51, 1e-1);
		is(ref($location->{'geocoder'}), 'Geo::Coder::OSM', 'Verify OSM encoder is used');

		my @locations = $geocoderlist->geocode({ location => 'Rochester, Kent, England' });
		ok(scalar(@locations) >= 1);
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.39, 1e-1);
		delta_within($location->{geometry}{location}{lng}, 0.51, 1e-1);
		is(ref($location->{'geocoder'}), 'Geo::Coder::OSM', 'Verify list reads are not cached after scalar read');

		my $count;
		@locations = $geocoderlist->geocode({ location => 'Allen, Indiana, USA' });
		$count = scalar(@locations);
		ok($count >= 1);
		$location = $locations[0];
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 41.1, 1e-1);
		delta_within($location->{geometry}{location}{lng}, -85.06, 1e-1);
		is(ref($location->{'geocoder'}), 'Geo::Coder::OSM', 'Verify OSM encoder is used');

		$location = $geocoderlist->geocode({ location => 'Allen, Indiana, USA' });
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 41.1, 1e-1);
		delta_within($location->{geometry}{location}{lng}, -85.06, 1e-1);
		is($location->{'geocoder'}, 'cache', 'Verify subsequent scalar reads are cached');

		@locations = $geocoderlist->geocode({ location => 'Allen, Indiana, USA' });
		ok(scalar(@locations) == $count);
		$location = $locations[0];
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 41.1, 1e-1);
		delta_within($location->{geometry}{location}{lng}, -85.06, 1e-1);
		is($location->{'geocoder'}, 'cache', 'Verify subsequent list reads are cached');

		$location = $geocoderlist->geocode('Ramsgate, Kent, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.33, 1e-2);
		delta_within($location->{geometry}{location}{lng}, 1.42, 1e-2);
		is(ref($location->{'geocoder'}), 'Geo::Coder::Postcodes', 'Verify Postcodes encoder is used');

		throws_ok( sub { $geocoderlist->geocode() }, qr/^Usage: /, 'No arguments gets usage message');
		ok(!defined($geocoderlist->geocode('')));

		my $log = $geocoderlist->log();
		# diag(Data::Dumper->new([\$log])->Dump());
		ok(defined($log));
		$geocoderlist->flush();
		if($ENV{'TEST_VERBOSE'}) {
			foreach my $l(@{$log}) {
				diag($l->{location}, ': ',  $l->{timetaken}, 's with ',  $l->{geocoder}, '(error: ', $l->{error}, ')');
			}
		}

		SKIP: {
			skip 'DTSK has stopped working', 9;

			require_ok('Geo::Coder::DataScienceToolkit');

			Geo::Coder::DataScienceToolkit->import();

			$geocoderlist = new_ok('Geo::Coder::List')
				->push({ regex => qr/Canada$/, geocoder => new_ok('Geo::Coder::CA') })
				->push({ regex => qr/(England|UK|United Kingdom|USA|United States)$/, geocoder => new_ok('Geo::Coder::DataScienceToolkit') });
			$location = $geocoderlist->geocode('Margate, Kent, England');
			ok(defined($location));
			ok(ref($location) eq 'HASH');
			delta_within($location->{geometry}{location}{lat}, 51.38, 1e-2);
			delta_within($location->{geometry}{location}{lng}, 1.39, 1e-2);
			is(ref($location->{'geocoder'}), 'Geo::Coder::DataScienceToolkit', 'Verify DSTK encoder is used');
		}
	}
}
