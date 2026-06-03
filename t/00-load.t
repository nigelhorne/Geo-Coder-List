#!perl -w

use warnings;
use strict;

use Test::Most tests => 2;

BEGIN {
	eval {
		require Geo::Coder::List;
		Geo::Coder::List->import();
		1;
	} or do {
		diag("Failed to load Geo::Coder::List: $@");
		BAIL_OUT('Geo::Coder::List failed to load');
	};
}

use_ok('Geo::Coder::List') || do {
	diag("Failed to use Geo::Coder::List: $@");
	BAIL_OUT('Geo::Coder::List failed to load');
};

require_ok('Geo::Coder::List') || do {
	diag("Failed to require Geo::Coder::List: $@");
	BAIL_OUT('Geo::Coder::List failed to load');
};

diag("Testing Geo::Coder::List $Geo::Coder::List::VERSION, Perl $], $^X");
