#!perl -wT

use strict;
use warnings;
use Test::Most tests => 19;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

GOOGLE: {
	SKIP: {
		skip 'Test requires Internet access', 18 unless(-e 't/online.enabled');

		eval {
			require Geo::Coder::Google::V3;

			Geo::Coder::Google::V3->import;

			require Test::Number::Delta;

			Test::Number::Delta->import();
		};

		if($@) {
			diag('Geo::Coder::Google::V3 not installed - skipping tests');
			skip 'Geo::Coder::Google::V3 not installed', 18;
		} else {
			diag("Using Geo::Coder::Google::V3 $Geo::Coder::Google::V3::VERSION");
		}
		if(my $key = $ENV{GMAP_KEY}) {
			my %gp_args = (
				key => $key,
				api_key => $key
			);

			my $geocoderlist = new_ok('Geo::Coder::List')
				->push(new_ok('Geo::Coder::Google::V3' => [ %gp_args ]));

			my $location = $geocoderlist->geocode('Silver Spring, MD, USA');
			ok(defined($location));
			ok(ref($location) eq 'HASH');
			delta_within($location->{geometry}{location}{lat}, 38.99, 1e-1);
			delta_within($location->{geometry}{location}{lng}, -77.02, 1e-1);
			is(ref($location->{'geocoder'}), 'Geo::Coder::Google::V3', 'Verify Google encoder is used');

			$location = $geocoderlist->geocode('Silver Spring, MD, USA');
			ok(defined($location));
			ok(ref($location) eq 'HASH');
			delta_within($location->{geometry}{location}{lat}, 38.99, 1e-1);
			delta_within($location->{geometry}{location}{lng}, -77.02, 1e-1);
			is($location->{'geocoder'}, 'cache', 'Verify subsequent reads are cached');

			# $location = $geocoderlist->geocode('Plugh Hospice, Rochester, Earth');
			# ok(!defined($location));

			$location = $geocoderlist->geocode({ location => 'Rochester, Kent, England' });
			ok(defined($location));
			ok(ref($location) eq 'HASH');
			delta_within($location->{geometry}{location}{lat}, 51.38, 1e-1);
			delta_within($location->{geometry}{location}{lng}, 0.5067, 1e-1);

			# $location = $geocoderlist->geocode('Xyzzy Lane, Minster, Thanet, Kent, England');
			# ok(!defined($location));

			throws_ok( sub { $geocoderlist->geocode() }, qr/^Usage: /, 'No arguments gets usage message');
			ok(!defined($geocoderlist->geocode('')));
		} else {
			diag('Set GMAP_KEY to enable more tests');
			skip('GMAP_KEY not set', 18);
		}
	}
}
