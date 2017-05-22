#!perl -wT

use strict;
use warnings;
use LWP;
use Test::Most tests => 15;
use Test::NoWarnings;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

CANADA: {
	SKIP: {
		skip 'Test requires Internet access', 13 unless(-e 't/online.enabled');

		eval {
			require Geo::Coder::CA;

			Geo::Coder::CA->import();

			require Test::Number::Delta;

			Test::Number::Delta->import();

			require Test::LWP::UserAgent;

			Test::LWP::UserAgent->import();

			require Test::Carp;

			Test::Carp->import();
		};

		# curl 'geocoder.ca/some_location?locate=9235+Main+St,+Richibucto,+New Brunswick,+Canada&json=1'
		if($@) {
			diag('Geo::Coder::CA not installed - skipping tests');
			skip 'Geo::Coder::CA not installed', 13;
		} else {
			diag("Using Geo::Coder::CA $Geo::Coder::CA::VERSION");
		}
		my $geocoderlist = new_ok('Geo::Coder::List');
		my $ca = new_ok('Geo::Coder::CA');
		$geocoderlist->push($ca);

		my $ua = LWP::UserAgent->new();
		$ua->env_proxy(1);
		$geocoderlist->ua($ua);
		ok($ca->ua() eq $ua);

		my $location = $geocoderlist->geocode(location => '9235 Main St, Richibucto, New Brunswick, Canada');
		ok(defined($location));
		is(ref($location), 'HASH', 'geocode should return a reference to a HASH');
		delta_within($location->{geometry}{location}{lat}, 46.68, 1e-1);
		delta_within($location->{geometry}{location}{lng}, -64.86, 1e-1);

		$location = $geocoderlist->geocode(location => 'Allen, Indiana, USA');
		ok(!defined($location));

		ok(!defined($geocoderlist->geocode()));
		ok(!defined($geocoderlist->geocode('')));

		$ua = new_ok('Test::LWP::UserAgent');
		$ua->map_response('nominatim.openstreetmap.org', new_ok('HTTP::Response' => [ '500' ]));
		$geocoderlist->ua($ua);

		ok(!defined($geocoderlist->geocode('10 Downing St., London, UK')));
	}
}
