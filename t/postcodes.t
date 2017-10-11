#!perl -wT

use strict;
use warnings;
use Test::Most tests => 20;
use Test::NoWarnings;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

POSTCODES: {
	SKIP: {
		skip 'Test requires Internet access', 18 unless(-e 't/online.enabled');

		eval {
			require Geo::Coder::Postcodes;

			Geo::Coder::Postcodes->import;

			require Test::Number::Delta;

			Test::Number::Delta->import();

			require LWP::UserAgent::Throttled;

			LWP::UserAgent::Throttled->import();
		};

		if($@) {
			diag('Geo::Coder::Postcodes not installed - skipping tests');
			skip 'Geo::Coder::Postcodes not installed', 18;
		} else {
			diag("Using Geo::Coder::Postcodes $Geo::Coder::Postcodes::VERSION");
		}

		my $ua = new_ok('LWP::UserAgent::Throttled');
		$ua->env_proxy(1);

		my $geocoderlist = new_ok('Geo::Coder::List')->push(new_ok('Geo::Coder::Postcodes'));
		$geocoderlist->ua($ua);
		$ua->throttle({ 'api.postcodes.io' => 1 });

		my $location = $geocoderlist->geocode('Ramsgate, Kent, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.33, 1e-2);
		delta_within($location->{geometry}{location}{lng}, 1.42, 1e-2);
		is(ref($location->{'geocoder'}), 'Geo::Coder::Postcodes', 'Verify Postcodes encoder is used');

		$location = $geocoderlist->geocode('Ashford, Kent, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.59, 1);
		delta_within($location->{geometry}{location}{lng}, 0.87, 1);
		is(ref($location->{'geocoder'}), 'Geo::Coder::Postcodes', 'Verify Postcodes encoder is used');

		$location = $geocoderlist->geocode('Ramsgate, Kent, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.33, 1e-2);
		delta_within($location->{geometry}{location}{lng}, 1.42, 1e-2);
		is($location->{'geocoder'}, undef, 'Verify subsequent reads are cached');
	}
}
