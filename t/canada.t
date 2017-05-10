#!perl -wT

use strict;
use warnings;
use Test::Most tests => 10;
use Test::NoWarnings;
use Test::Number::Delta within => 1e-2;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

GOOGLEPLACES: {
	SKIP: {
		eval {
			require Geo::Coder::CA;

			Geo::Coder::CA->import();
		};

		# curl 'geocoder.ca/some_location?locate=9235+Main+St,+Richibucto,+New Brunswick,+Canada&json=1'
		if($@) {
			diag('Geo::Coder::CA not installed - skipping tests');
			skip 'Geo::Coder::CA not installed', 16;
		} else {
			diag("Using Geo::Coder::CA $Geo::Coder::CA::VERSION");
		}
		my $geocoderlist = new_ok('Geo::Coder::List');
		$geocoderlist->push(new_ok('Geo::Coder::CA'));

		my $location = $geocoderlist->geocode(location => '9235 Main St, Richibucto, New Brunswick, Canada');
		ok(defined($location));
# use Data::Dumper;
# diag(Data::Dumper->new([\$location])->Dump());
		is(ref($location), 'HASH', 'geocode should return a reference to a HASH');
		delta_ok($location->{geometry}{location}{lat}, 46.68);
		delta_ok($location->{geometry}{location}{lng}, -64.86);

		ok(!defined($geocoderlist->geocode()));
		ok(!defined($geocoderlist->geocode('')));
	}
}
