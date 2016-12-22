#!perl -wT

use strict;
use warnings;
use Test::Most tests => 7;
use Test::NoWarnings;
use Test::Number::Delta within => 1e-2;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
	use_ok('Geo::Coder::Google::V3');
}

GOOGLE: {
	my $geocoderlist = new_ok('Geo::Coder::List');
	my $geocoder = new_ok('Geo::Coder::Google::V3');

	$geocoderlist->push($geocoder);
	my $location = $geocoderlist->geocode('Silver Spring, MD, USA');
	delta_ok($location->{geometry}{location}{lat}, 38.991);
	delta_ok($location->{geometry}{location}{lng}, -77.026);
}
