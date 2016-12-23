#!perl -wT

use strict;
use warnings;
use Test::Most tests => 13;
use Test::NoWarnings;
use Test::Number::Delta within => 1e-2;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

LIST: {
	SKIP: {
		eval {
			require Geo::Coder::Google::V3;

			Geo::Coder::Google::V3->import;

			require Geo::Coder::OSM;

			Geo::Coder::OSM->import;

			require Geo::Coder::Bing;

			Geo::Coder::Bing->import;
		};

		if($@) {
			diag('Enough geocoders not installed - skipping tests');
			skip 'Enough geocoders not installed', 11;
		}
		my $geocoderlist = new_ok('Geo::Coder::List');
		$geocoderlist->push(new_ok('Geo::Coder::Google::V3'))
			->push(new_ok('Geo::Coder::OSM'));

		if(my $key = $ENV{GMAP_KEY}) {
			$geocoderlist->push(new_ok('Geo::Coder::GooglePlaces::V3' => [ key => $key]));
		}
		if(my $key = $ENV{BMAP_KEY}) {
			$geocoderlist->push(new_ok('Geo::Coder::Bing' => [ key => $key]));
		}

		my $location = $geocoderlist->geocode('Silver Spring, MD, USA');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_ok($location->{geometry}{location}{lat}, 38.991);
		delta_ok($location->{geometry}{location}{lng}, -77.026);

		$location = $geocoderlist->geocode('St Mary The Virgin, Minster, Thanet, Kent, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_ok($location->{geometry}{location}{lat}, 51.330);
		delta_ok($location->{geometry}{location}{lng}, 1.31596);
	}
}
