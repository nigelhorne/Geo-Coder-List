#!perl -wT

# curl 'geocoder.ca/some_location?locate=9235+Main+St,+Richibucto,+New Brunswick,+Canada&json=1'

use strict;
use warnings;
use LWP;
use Test::Most tests => 11;
use Test::NoWarnings

eval 'use autodie qw(:all)';	# Test for open/close failures

BEGIN {
	use_ok('Geo::Coder::List');
}

UA: {
	SKIP: {
		if(require_ok('Geo::Coder::CA')) {
			Geo::Coder::CA->import();

			my $geocoderlist = new_ok('Geo::Coder::List');
			my $ca = new_ok('Geo::Coder::CA');
			$geocoderlist->push($ca);

			my $ua = new_ok('Tester');
			$geocoderlist->ua($ua);
			ok($ca->ua() eq $ua);

			cmp_ok($ua->count(), '==', 0, 'Initialised correctly');

			cmp_ok($geocoderlist->ua($ua), 'eq', $ua, 'Setting returns the used agent');
			cmp_ok($ca->ua(), 'eq', $ua, 'Sets the useragent in each geocoder');

			my $location = $geocoderlist->geocode(location => '9235 Main St, Richibucto, New Brunswick, Canada');
			cmp_ok($ua->count(), '==', 1, 'Used the correct ua');
		} else {
			diag('Geo::Coder::CA not installed - skipping tests');
			skip('Geo::Coder::CA not installed', 8);
		}
	}
}

1;

package Tester;

# our @ISA = ('LWP::UserAgent');

sub new {
	my $class = shift;

	return bless { count => 0 }, $class;
}

# sub send_request {
	# my $self = shift;
# 
	# $self->{count}++;
	# return bless { }, __PACKAGE__;
# }

# sub code { return 0; }
# sub header { return 0; }	# http://www.cpantesters.org/cpan/report/55bb4f64-8d7e-11ec-adcf-8cefa471f67a
# sub redirects { return 0; }
sub is_error { return 0 }
sub decoded_content { return '{}' }

sub get {
	my $self = shift;

	$self->{count}++;
	return bless { }, __PACKAGE__;
}

sub count {
	my $self = shift;

	return $self->{count};
}
