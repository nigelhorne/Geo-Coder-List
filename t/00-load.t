#!perl -w

use warnings;
use strict;

use Test::Most tests => 2;

BEGIN {
	use_ok('Geo::Coder::List') or BAIL_OUT("Cannot load Geo::Coder::List: $@");
}

require_ok('Geo::Coder::List') || do {
	diag("Failed to require Geo::Coder::List: $@");
	BAIL_OUT('Geo::Coder::List failed to load');
};

diag("Testing Geo::Coder::List $Geo::Coder::List::VERSION, Perl $], $^X");
