#!perl -wT

use strict;
use warnings;
use Test::Most tests => 24;
use Test::NoWarnings;
use Test::Number::Delta within => 1e-2;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

OSM: {
	SKIP: {
		eval {
			require Geo::Coder::OSM;

			Geo::Coder::OSM->import;
		};

		if($@) {
			diag('Geo::Coder::OSM not installed - skipping tests');
			skip 'Geo::Coder::OSM not installed', 19;
		} else {
			diag("Using Geo::Coder::OSM $Geo::Coder::OSM::VERSION");
		}
		my $geocoderlist = new_ok('Geo::Coder::List');
		my $geocoder = new_ok('Geo::Coder::OSM');
		$geocoderlist->push($geocoder);

		ok(!defined($geocoderlist->geocode()));

		my $location = $geocoderlist->geocode('Silver Spring, MD, USA');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_ok($location->{geometry}{location}{lat}, 38.991);
		delta_ok($location->{geometry}{location}{lng}, -77.026);

		# OSM is broken, putting Kent here fails
		$location = $geocoderlist->geocode('Wisdom Hospice, Rochester, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_ok($location->{geometry}{location}{lat}, 51.372);
		delta_ok($location->{geometry}{location}{lng}, 0.50873);

		# But putting it here succeeds!
		$location = $geocoderlist->geocode('Rochester, Kent, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_ok($location->{geometry}{location}{lat}, 51.388);
		delta_ok($location->{geometry}{location}{lng}, 0.50672);

		$location = $geocoderlist->geocode(location => '8600 Rockville Pike, Bethesda MD, 20894 USA');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_ok($location->{geometry}{location}{lat}, 39.00);
		delta_ok($location->{geometry}{location}{lng}, -77.10);

		# Check list context finds both Portland, ME and Portaland, OR
		my @locations = $geocoderlist->geocode('Portland, USA');

		ok(scalar(@locations) > 1);

		my ($maine, $oregon);
		foreach my $state(map { $_->{'address'}->{'state'} } @locations) {
			# diag($state);
			if($state eq 'Maine') {
				$maine++;
			} elsif($state eq 'Oregon') {
				$oregon++;
			}
		}

		ok($maine == 1);
		ok($oregon == 1);
	}
}
