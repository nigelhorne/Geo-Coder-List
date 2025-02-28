#!perl -wT

use strict;
use Test::Most tests => 33;

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

OSM: {
	SKIP: {
		skip 'Test requires Internet access', 32 unless(-e 't/online.enabled');

		eval {
			require Geo::Coder::OSM;

			Geo::Coder::OSM->import;

			require Test::Number::Delta;

			Test::Number::Delta->import();

			require LWP::UserAgent::Throttled;

			LWP::UserAgent::Throttled->import();
		};

		if($@) {
			diag('Geo::Coder::OSM not installed - skipping tests');
			skip('Geo::Coder::OSM not installed', 32);
		} else {
			diag("Using Geo::Coder::OSM $Geo::Coder::OSM::VERSION");
		}
		my $geocoderlist = new_ok('Geo::Coder::List');
		# my $geocoder = new_ok('Geo::Coder::OSM' => [ 'sources' => [ 'mapquest', 'osm' ] ] );
		my $geocoder = new_ok('Geo::Coder::OSM');
		$geocoderlist->push($geocoder);

		throws_ok( sub { $geocoderlist->geocode() }, qr/^Usage: /, 'No arguments gets usage message');

		check($geocoderlist, 'Silver Spring, MD, USA', 38.99, -77.02);

		my $ua = LWP::UserAgent::Throttled->new();
		$ua->throttle({ 'nominatim.openstreetmap.org' => 1 });
		$ua->env_proxy(1);
		$geocoderlist->ua($ua);

		check($geocoderlist, '10 Downing St, London, England', 51.5, -0.13);

		my $location = $geocoderlist->geocode('Rochester, Kent, England');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 51.38, 1e-1);
		delta_within($location->{geometry}{location}{lng}, 0.5067, 1e-1);
		ok($location->{address}{country_code} eq 'gb');
		ok($location->{address}{country} eq 'United Kingdom');

		$location = $geocoderlist->geocode(location => '8600 Rockville Pike, Bethesda MD, 20894, USA');
		ok(defined($location));
		ok(ref($location) eq 'HASH');
		delta_within($location->{geometry}{location}{lat}, 39.00, 1e-1);
		delta_within($location->{geometry}{location}{lng}, -77.10, 1e-1);
		ok($location->{address}{country_code} eq 'us');
		like($location->{address}{country}, qr/^United States/, 'check USA');

		like($geocoderlist->reverse_geocode('39.00,-77.10'), qr/National Institutes of Health/i, 'test reverse geocode');

		my @locations = $geocoderlist->geocode('Vessels, Misc Ships at Sea or Abroad, England');
		my $count = scalar(@locations);
		ok($count == 0);

		@locations = $geocoderlist->geocode('Vessels, Misc Ships at Sea or Abroad, England');
		$count = scalar(@locations);
		ok($count == 0);

		# Check list context finds both Portland, ME and Portland, OR
		@locations = $geocoderlist->geocode('Portland, USA');

		$count = scalar(@locations);

		ok($count > 1);
		is(ref($locations[0]->{'geocoder'}), 'Geo::Coder::OSM', 'Verify OSM encoder is used');

		my ($maine, $oregon);
		foreach my $state(map { $_->{'address'}->{'state'} } @locations) {
			if(defined($state)) {
				# diag($state);
				if($state eq 'Maine') {
					$maine++;
				} elsif($state eq 'Oregon') {
					$oregon++;
				}
			}
		}

		ok($maine == 1);
		ok($oregon == 1);

		@locations = $geocoderlist->geocode('Portland, USA');

		ok(scalar(@locations) == $count);
		is($locations[0]->{'geocoder'}, 'cache', 'Verify subsequent reads are cached');
	}
}

sub check
{
	my($geocoderlist, $location, $lat, $long) = @_;

	my $rc = $geocoderlist->geocode($location);
	isnt($rc, undef, "Find $location");
	ok(ref($rc) eq 'HASH');
	delta_within($rc->{geometry}{location}{lat}, $lat, 1e-1);
	delta_within($rc->{geometry}{location}{lng}, $long, 1e-1);
	sleep(1);	# Don't get blacklisted
}
