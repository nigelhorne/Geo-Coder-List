#!/usr/bin/env perl

# t/function.t - White-box function-level tests for Geo::Coder::List
# Each public method and internal helper is tested in isolation.
# Test::Mockingbird is used to mock all geocoder backends.

use strict;
use warnings;

use lib 'lib';

use Test::Most;
use Test::Mockingbird;
use Test::Returns;
use Test::Memory::Cycle;
use Readonly;
use Scalar::Util qw(blessed refaddr);
use Data::Dumper;

# The module under test
BEGIN { use_ok('Geo::Coder::List') }

# ── Fixed test values ─────────────────────────────────────────────────────────

# Coordinates used throughout; named to make assertions self-documenting
Readonly::Scalar my $LAT_DC     => 38.8977;
Readonly::Scalar my $LNG_DC     => -77.0365;
Readonly::Scalar my $LAT_NY     => 40.7128;
Readonly::Scalar my $LNG_NY     => -74.006;
Readonly::Scalar my $LAT_LONDON => 51.5074;
Readonly::Scalar my $LNG_LONDON => -0.1278;

# Location strings and a lat/lng string used across multiple subtests
Readonly::Scalar my $LOC_DC     => '1600 Pennsylvania Ave NW, Washington, DC';
Readonly::Scalar my $LOC_LONDON => '10 Downing St, London, UK';
Readonly::Scalar my $LOC_USA    => 'Silver Spring, MD, USA';
Readonly::Scalar my $LATLNG_DC  => "$LAT_DC,$LNG_DC";

# ── Minimal mock geocoder packages ───────────────────────────────────────────
# Three distinct stubs so individual subtests can mock any combination.
# Each provides geocode(), reverse_geocode(), and ua() as no-ops by default.

package MockGeocoder::Alpha;
sub new            { bless {}, shift }
sub geocode        { return () }
sub reverse_geocode{ return () }
sub ua             { $_[0]->{ua} = $_[1]; return $_[1] }

package MockGeocoder::Beta;
sub new            { bless {}, shift }
sub geocode        { return () }
sub reverse_geocode{ return () }
sub ua             { $_[0]->{ua} = $_[1]; return $_[1] }

package MockGeocoder::Gamma;
sub new            { bless {}, shift }
sub geocode        { return () }
sub reverse_geocode{ return () }
sub ua             { $_[0]->{ua} = $_[1]; return $_[1] }

package main;

# ── Helper: build a list with one geocoder already pushed ─────────────────────
sub _make_list {
	my ($geocoder, %opts) = @_;
	my $list = Geo::Coder::List->new(%opts);
	$list->push($geocoder);
	return $list;
}

# ── Helper: a canonical OSM-style result hash ─────────────────────────────────
sub _osm_result {
	my ($lat, $lng) = @_;
	return { lat => $lat, lon => $lng };
}

# =============================================================================
# new()
# =============================================================================

subtest 'new: returns a blessed Geo::Coder::List object' => sub {
	my $obj = Geo::Coder::List->new();
	isa_ok($obj, 'Geo::Coder::List', 'new() returns correct class');
	ok(blessed($obj), 'return value is a blessed reference');
	returns_ok($obj, { type => 'object' }, 'satisfies object schema');
};

subtest 'new: initialises geocoders, locations, and log to empty state' => sub {
	my $obj = Geo::Coder::List->new();
	# All three internal collections must exist and be empty
	is(ref($obj->{geocoders}), 'ARRAY', 'geocoders is ARRAY ref');
	is(scalar @{$obj->{geocoders}}, 0,   'geocoders starts empty');
	is(ref($obj->{log}),       'ARRAY', 'log is ARRAY ref');
	is(scalar @{$obj->{log}},       0,   'log starts empty');
	is(ref($obj->{locations}), 'HASH',  'locations is HASH ref');
};

subtest 'new: accepts and stores debug flag' => sub {
	my $obj = Geo::Coder::List->new(debug => 2);
	is($obj->{debug}, 2, 'debug level stored correctly');
	diag("debug=$obj->{debug}") if $ENV{TEST_VERBOSE};
};

subtest 'new: accepts cache option' => sub {
	my $l2  = {};
	my $obj = Geo::Coder::List->new(cache => $l2);
	is($obj->{cache}, $l2, 'cache reference stored on object');
};

subtest 'new: accepts geocoders list passed directly as constructor arg' => sub {
	# Callers may pre-populate the geocoder list without push()
	my $g   = MockGeocoder::Alpha->new();
	my $obj = Geo::Coder::List->new(geocoders => [$g]);
	is(scalar @{$obj->{geocoders}}, 1,  'one geocoder stored');
	is($obj->{geocoders}[0], $g,         'correct geocoder object stored');
};

subtest 'new: clones when called on an existing instance' => sub {
	my $orig = Geo::Coder::List->new(debug => 0);
	$orig->push(MockGeocoder::Alpha->new());
	# Clone inherits the geocoder list and overrides debug
	my $clone = $orig->new(debug => 3);
	isa_ok($clone, 'Geo::Coder::List', 'clone is Geo::Coder::List');
	isnt(refaddr($clone), refaddr($orig), 'clone is a different object');
	is($clone->{debug}, 3,               'clone has the overridden debug');
	is(scalar @{$clone->{geocoders}}, 1, 'clone inherited geocoder list');
};

subtest 'new: ::new() (function call) with no args still returns an object' => sub {
	# Edge case: the module supports this for backwards compatibility
	my $obj = Geo::Coder::List::new();
	isa_ok($obj, 'Geo::Coder::List', '::new() returns a Geo::Coder::List');
};

subtest 'new: ::new() with arguments carps and returns undef' => sub {
	# Calling ::new() as a function with args is not supported
	my $result;
	warnings_like {
		$result = Geo::Coder::List::new(undef, debug => 1);
	} qr/use ->new\(\) not ::new\(\)/, 'correct carp message emitted';
	ok(!defined($result), 'returns undef when called incorrectly');
};

subtest 'new: no circular references in fresh object' => sub {
	my $obj = Geo::Coder::List->new();
	memory_cycle_ok($obj, 'no circular refs in fresh object');
};

subtest 'new: cache_hit_duration and siblings default to expected values' => sub {
	my $obj = Geo::Coder::List->new();
	is($obj->{cache_hit_duration},  '1 month', 'cache_hit_duration default');
	is($obj->{cache_part_duration}, '1 day',   'cache_part_duration default');
	is($obj->{cache_miss_duration}, '1 week',  'cache_miss_duration default');
};

# =============================================================================
# push()
# =============================================================================

subtest 'push: returns $self for method chaining' => sub {
	my $list = Geo::Coder::List->new();
	my $ret  = $list->push(MockGeocoder::Alpha->new());
	is(refaddr($ret), refaddr($list), 'push() returns $self');
	returns_ok($ret, { type => 'object' }, 'return satisfies object schema');
};

subtest 'push: appends geocoders in order' => sub {
	my $list = Geo::Coder::List->new();
	my ($a, $b) = (MockGeocoder::Alpha->new(), MockGeocoder::Beta->new());
	$list->push($a)->push($b);
	is($list->{geocoders}[0], $a, 'first geocoder is Alpha');
	is($list->{geocoders}[1], $b, 'second geocoder is Beta');
};

subtest 'push: accepts a plain geocoder object' => sub {
	my $list = Geo::Coder::List->new();
	my $g    = MockGeocoder::Alpha->new();
	$list->push($g);
	is(ref($list->{geocoders}[0]), 'MockGeocoder::Alpha',
		'plain object stored directly');
};

subtest 'push: accepts a hashref entry with regex, geocoder, and limit' => sub {
	my $list  = Geo::Coder::List->new();
	my $entry = { regex => qr/USA$/, geocoder => MockGeocoder::Alpha->new(), limit => 50 };
	$list->push($entry);
	my $stored = $list->{geocoders}[0];
	is(ref($stored),       'HASH', 'hashref entry stored as HASH');
	ok(exists $stored->{regex},    'regex key present in stored entry');
	is($stored->{limit}, 50,       'limit value stored correctly');
};

subtest 'push: croaks with no argument' => sub {
	my $list = Geo::Coder::List->new();
	throws_ok { $list->push() }
		qr/Usage: \(\$geocoder/,
		'push() without argument throws expected error';
};

# =============================================================================
# geocode()
# =============================================================================

subtest 'geocode: croaks when called with no arguments' => sub {
	# Params::Get::get_params croaks when the required key is absent
	my $list = Geo::Coder::List->new();
	throws_ok { $list->geocode() } qr/Usage:/i,
		'geocode() with no args croaks';
};

subtest 'geocode: carps for empty location string' => sub {
	my $list = Geo::Coder::List->new();
	warnings_like { $list->geocode(location => '') }
		qr/usage: geocode\(/,
		'empty string location emits expected carp';
};

subtest 'geocode: carps for undef location' => sub {
	my $list = Geo::Coder::List->new();
	warnings_like { $list->geocode(location => undef) }
		qr/usage: geocode\(/,
		'undef location emits expected carp';
};

subtest 'geocode: croaks for numeric-only input' => sub {
	my $list = Geo::Coder::List->new();
	throws_ok { $list->geocode('99999') }
		qr/invalid input to geocode/,
		'numeric-only location string croaks';
};

subtest 'geocode: returns undef when no geocoders are configured' => sub {
	my $list   = Geo::Coder::List->new();
	my $result = $list->geocode($LOC_LONDON);
	ok(!defined($result), 'returns undef with empty geocoder chain');
};

subtest 'geocode: successful scalar result has canonical geometry structure' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return _osm_result($LAT_DC, $LNG_DC);
	};

	my $result = $list->geocode(location => $LOC_DC);

	ok(defined $result, 'geocode() returned a defined result');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'geometry.location.lat correct');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'geometry.location.lng correct');
	is($result->{lat},                     $LAT_DC, 'lat convenience alias correct');
	is($result->{lng},                     $LNG_DC, 'lng convenience alias correct');
	is($result->{lon},                     $LNG_DC, 'lon compatibility alias correct');
	diag('result: ', Dumper($result)) if $ENV{TEST_VERBOSE};
};

subtest 'geocode: geocoder field holds the geocoder object (not a string)' => sub {
	my $g    = MockGeocoder::Alpha->new();
	my $list = _make_list($g);
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return _osm_result($LAT_DC, $LNG_DC);
	};

	my $result = $list->geocode($LOC_DC);
	is(ref($result->{geocoder}), 'MockGeocoder::Alpha',
		'geocoder field is the geocoder object');
};

subtest 'geocode: falls back to second geocoder when first throws' => sub {
	my ($a, $b) = (MockGeocoder::Alpha->new(), MockGeocoder::Beta->new());
	my $list = Geo::Coder::List->new();
	$list->push($a)->push($b);

	my $mock_a = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		die 'rate limit exceeded';
	};
	my $mock_b = mock_scoped 'MockGeocoder::Beta::geocode' => sub {
		return _osm_result($LAT_DC, $LNG_DC);
	};

	my $result;
	warnings_like { $result = $list->geocode($LOC_DC) }
		qr/rate limit exceeded/,
		'error from Alpha is carpd';

	ok(defined $result, 'result obtained from Beta after Alpha failed');
	is(ref($result->{geocoder}), 'MockGeocoder::Beta',
		'result came from the fallback geocoder');
};

subtest 'geocode: respects regex filter, skips non-matching geocoder' => sub {
	my ($a, $b) = (MockGeocoder::Alpha->new(), MockGeocoder::Beta->new());
	my $list    = Geo::Coder::List->new();
	# Alpha only handles USA addresses
	$list->push({ regex => qr/USA$/, geocoder => $a });
	$list->push($b);

	my $alpha_calls = 0;
	my $beta_calls  = 0;

	my $mock_a = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		$alpha_calls++;
		return _osm_result($LAT_NY, $LNG_NY);
	};
	my $mock_b = mock_scoped 'MockGeocoder::Beta::geocode' => sub {
		$beta_calls++;
		return _osm_result($LAT_LONDON, $LNG_LONDON);
	};

	# London does not match /USA$/; only Beta should be tried
	$list->geocode($LOC_LONDON);

	is($alpha_calls, 0, 'Alpha not called for non-USA location');
	is($beta_calls,  1, 'Beta called for non-USA location');
};

subtest 'geocode: respects per-geocoder limit' => sub {
	my $list = Geo::Coder::List->new();
	$list->push({ geocoder => MockGeocoder::Alpha->new(), limit => 1 });

	my $calls = 0;
	my $mock  = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		$calls++;
		return _osm_result($LAT_DC, $LNG_DC);
	};

	# First call uses up the limit; second should not reach the geocoder
	$list->geocode($LOC_USA);
	$list->geocode('Baltimore, MD, USA');

	is($calls, 1, 'geocoder called exactly once when limit is 1');
};

subtest 'geocode: L1 cache hit on repeated scalar-context call' => sub {
	my $list  = _make_list(MockGeocoder::Alpha->new());
	my $calls = 0;
	my $mock  = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		$calls++;
		return _osm_result($LAT_DC, $LNG_DC);
	};

	my $r1 = $list->geocode($LOC_DC);
	my $r2 = $list->geocode($LOC_DC);

	is($calls, 1,       'backend called only once for the same location');
	is($r2->{geocoder}, 'cache', 'second result flagged as from cache');
};

subtest 'geocode: not-found result cached to avoid re-querying backends' => sub {
	my $list  = _make_list(MockGeocoder::Alpha->new());
	my $calls = 0;
	my $mock  = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		$calls++;
		return ();    # nothing found
	};

	$list->geocode($LOC_DC);    # misses
	$list->geocode($LOC_DC);    # should hit the not-found L1 cache

	is($calls, 1, 'backend not called again after not-found cached in L1');
};

subtest 'geocode: list context returns all results from winning geocoder' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return (
			_osm_result($LAT_DC, $LNG_DC),
			_osm_result($LAT_NY, $LNG_NY),
		);
	};

	my @results = $list->geocode($LOC_DC);
	ok(scalar @results >= 1, 'list context returns at least one result');
	ok(defined $results[0]{lat}, 'first result has lat key');
};

subtest 'geocode: writes a log entry on success' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return _osm_result($LAT_DC, $LNG_DC);
	};

	$list->geocode($LOC_DC);

	my $log = $list->log();
	ok(scalar @{$log} > 0, 'at least one log entry written');
	my $e = $log->[0];
	is($e->{location}, $LOC_DC,             'log entry has correct location');
	is($e->{geocoder}, 'MockGeocoder::Alpha','log entry has geocoder class name');
	ok(exists $e->{timetaken},              'log entry has timetaken key');
};

subtest 'geocode: writes a log entry recording the error on failure' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		die 'simulated API error';
	};

	warnings_like { $list->geocode($LOC_DC) }
		qr/simulated API error/, 'error is carpd';

	my ($err) = grep { exists $_->{error} } @{$list->log()};
	ok(defined $err,                        'error log entry was created');
	like($err->{error}, qr/simulated API error/, 'error text recorded in log');
};

subtest 'geocode: decodes HTML entities before passing location to geocoder' => sub {
	my $list          = _make_list(MockGeocoder::Alpha->new());
	my $seen_location = '';
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		my ($self_inner, %args) = @_;
		$seen_location = $args{location} // '';
		return ();
	};

	$list->geocode(location => 'Caf&eacute; Road, London, UK');

	# decode_entities expands &eacute; to the Unicode character; the raw
	# entity code must not reach the geocoder backend
	unlike($seen_location, qr/&eacute;/,
		'HTML entity code not passed raw to geocoder');
	like($seen_location, qr/Caf.+Road/,
		'rest of the location string intact after entity decode');
};

subtest 'geocode: no circular references in result after successful call' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return _osm_result($LAT_DC, $LNG_DC);
	};

	my $result = $list->geocode($LOC_DC);
	memory_cycle_ok($list,   'no cycles in list object after geocode');
	memory_cycle_ok($result, 'no cycles in returned result hash');
};

# =============================================================================
# ua()
# =============================================================================

subtest 'ua: returns undef when called with no UA argument' => sub {
	my $list = Geo::Coder::List->new();
	ok(!defined $list->ua(), 'ua() with no arg returns undef');
};

subtest 'ua: returns the UA object that was passed in' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $ua   = bless { id => 'fake' }, 'FakeUA';
	my $mock = mock_scoped 'MockGeocoder::Alpha::ua' => sub { };  # accept silently

	my $ret = $list->ua($ua);
	is($ret, $ua, 'ua() returns the passed UA object');
};

subtest 'ua: propagates UA to every geocoder in the chain in order' => sub {
	my ($a, $b) = (MockGeocoder::Alpha->new(), MockGeocoder::Beta->new());
	my $list    = Geo::Coder::List->new();
	$list->push($a)->push($b);

	my @order;
	my $mock_a = mock_scoped 'MockGeocoder::Alpha::ua' => sub { push @order, 'alpha' };
	my $mock_b = mock_scoped 'MockGeocoder::Beta::ua'  => sub { push @order, 'beta'  };

	$list->ua(bless {}, 'FakeUA');
	is_deeply(\@order, [qw(alpha beta)],
		'UA propagated to each geocoder in push order');
};

subtest 'ua: propagates through hashref chain entries' => sub {
	my $g    = MockGeocoder::Alpha->new();
	my $list = Geo::Coder::List->new();
	$list->push({ regex => qr/.*/, geocoder => $g });

	my $called = 0;
	my $mock   = mock_scoped 'MockGeocoder::Alpha::ua' => sub { $called++ };

	$list->ua(bless {}, 'FakeUA');
	is($called, 1, 'ua() called on geocoder inside a hashref entry');
};

subtest 'ua: croaks when a chain entry contains an undef geocoder' => sub {
	my $list = Geo::Coder::List->new();
	# Inject a malformed entry; no geocoder key
	push @{$list->{geocoders}}, { regex => qr/.*/, geocoder => undef };

	throws_ok { $list->ua(bless {}, 'FakeUA') }
		qr/No geocoder found/,
		'ua() croaks on a chain entry with undef geocoder';
};

# =============================================================================
# reverse_geocode()
# =============================================================================

subtest 'reverse_geocode: croaks when called with no latlng argument' => sub {
	my $list = Geo::Coder::List->new();
	throws_ok { $list->reverse_geocode() } qr/Usage:/i,
		'reverse_geocode() with no args croaks';
};

subtest 'reverse_geocode: returns OSM display_name in scalar context' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::reverse_geocode' => sub {
		return { display_name => '10 Downing Street, London' };
	};

	my $addr = $list->reverse_geocode(latlng => $LATLNG_DC);
	is($addr, '10 Downing Street, London', 'OSM display_name returned as address');
};

subtest 'reverse_geocode: returns undef when no geocoders are configured' => sub {
	my $list   = Geo::Coder::List->new();
	my $result = $list->reverse_geocode(latlng => $LATLNG_DC);
	ok(!defined $result, 'returns undef with empty geocoder chain');
};

subtest 'reverse_geocode: caches result and does not re-query on second call' => sub {
	my $list  = _make_list(MockGeocoder::Alpha->new());
	my $calls = 0;
	my $mock  = mock_scoped 'MockGeocoder::Alpha::reverse_geocode' => sub {
		$calls++;
		return { display_name => 'Somewhere Nice' };
	};

	my $a1 = $list->reverse_geocode(latlng => $LATLNG_DC);
	my $a2 = $list->reverse_geocode(latlng => $LATLNG_DC);

	is($calls, 1, 'backend called only once for the same latlng');
	is($a2, $a1,  'second call returns the same address');
};

subtest 'reverse_geocode: list context collects display_name from each result' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::reverse_geocode' => sub {
		return (
			{ display_name => 'Address One' },
			{ display_name => 'Address Two' },
		);
	};

	my @addrs = $list->reverse_geocode(latlng => $LATLNG_DC);
	ok(scalar @addrs >= 1, 'list context returns at least one address');
	is($addrs[0], 'Address One', 'first address correct');
};

subtest 'reverse_geocode: writes log entry on success' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::reverse_geocode' => sub {
		return { display_name => 'Test Address' };
	};

	$list->reverse_geocode(latlng => $LATLNG_DC);

	my $entries = $list->log();
	ok(scalar @{$entries} > 0, 'log entry written after reverse_geocode');
	ok(exists $entries->[0]{location}, 'log entry has location key');
};

# =============================================================================
# log()
# =============================================================================

subtest 'log: returns an arrayref on a fresh object' => sub {
	my $list = Geo::Coder::List->new();
	my $log  = $list->log();
	is(ref($log), 'ARRAY', 'log() returns ARRAY ref');
	is(scalar @{$log}, 0,  'log is empty on a fresh object');
	returns_ok($log, { type => 'arrayref' }, 'satisfies arrayref schema');
};

subtest 'log: returns a valid arrayref even immediately after flush' => sub {
	my $list = Geo::Coder::List->new();
	$list->flush();
	my $log = $list->log();
	is(ref($log), 'ARRAY', 'log() returns ARRAY ref after flush');
};

subtest 'log: entries have all expected keys on a successful geocode' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return _osm_result($LAT_DC, $LNG_DC);
	};

	$list->geocode($LOC_DC);

	my $entry = $list->log()->[0];
	for my $key (qw(line location timetaken geocoder wantarray)) {
		ok(exists $entry->{$key}, "log entry has '$key' key");
	}
	diag(Dumper($entry)) if $ENV{TEST_VERBOSE};
};

# =============================================================================
# flush()
# =============================================================================

subtest 'flush: returns $self to allow chaining' => sub {
	my $list = Geo::Coder::List->new();
	my $ret  = $list->flush();
	is(refaddr($ret), refaddr($list), 'flush() returns $self');
	returns_ok($ret, { type => 'object' }, 'return satisfies object schema');
};

subtest 'flush: clears log entries' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return _osm_result($LAT_DC, $LNG_DC);
	};

	$list->geocode($LOC_DC);
	ok(scalar @{$list->log()} > 0, 'log has entries before flush');

	$list->flush();
	is(scalar @{$list->log()}, 0, 'log is empty after flush');
};

subtest 'flush: does not invalidate the L1 cache' => sub {
	my $list  = _make_list(MockGeocoder::Alpha->new());
	my $calls = 0;
	my $mock  = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		$calls++;
		return _osm_result($LAT_DC, $LNG_DC);
	};

	$list->geocode($LOC_DC);
	$list->flush();

	# After flush, the L1 cache must still hold the earlier result
	my $r = $list->geocode($LOC_DC);
	is($calls, 1,          'backend not re-called after flush');
	is($r->{geocoder}, 'cache', 'result served from L1 cache after flush');
};

# =============================================================================
# Response normalisation - tested via geocode() with provider-shaped mocks
# Each subtest sends the exact structure a real provider returns and asserts
# that geocode() maps it to the canonical geometry.location.{lat,lng} shape.
# =============================================================================

# Shared helper: run geocode() with a one-shot mocked geocoder and return result
sub _geocode_with_response {
	my ($response) = @_;
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub { $response };
	return $list->geocode($LOC_DC);
}

subtest 'normalise: already-canonical geometry.location.lat/lng passthrough' => sub {
	my $result = _geocode_with_response(
		{ geometry => { location => { lat => $LAT_DC, lng => $LNG_DC } } }
	);
	ok(defined $result, 'result returned');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat preserved');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng preserved');
};

subtest 'normalise: OSM/RandMcNally top-level lat/lon' => sub {
	my $result = _geocode_with_response({ lat => $LAT_DC, lon => $LNG_DC });
	ok(defined $result, 'result returned for OSM response');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat mapped from top-level lat');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng mapped from top-level lon');
	is($result->{lat},                     $LAT_DC, 'lat alias set');
	is($result->{lon},                     $LNG_DC, 'lon alias set');
};

subtest 'normalise: Bing BestLocation.Coordinates.{Latitude,Longitude}' => sub {
	my $result = _geocode_with_response({ BestLocation => { Coordinates => {
		Latitude => $LAT_DC, Longitude => $LNG_DC,
	} } });
	ok(defined $result,                            'result returned for Bing BestLocation');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from BestLocation.Coordinates');
};

subtest 'normalise: Bing point.coordinates [lat, lng]' => sub {
	# Bing point: coordinates[0]=lat, coordinates[1]=lng
	my $result = _geocode_with_response(
		{ point => { coordinates => [$LAT_DC, $LNG_DC] } }
	);
	ok(defined $result, 'result returned for Bing point response');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from point.coordinates[0]');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng from point.coordinates[1]');
};

subtest 'normalise: geocoder.ca latt/longt fields' => sub {
	my $result = _geocode_with_response({ latt => $LAT_DC, longt => $LNG_DC });
	ok(defined $result,                            'result returned for geocoder.ca');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from latt');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng from longt');
};

subtest 'normalise: postcodes.io latitude/longitude with local_type' => sub {
	my $result = _geocode_with_response(
		{ latitude => $LAT_DC, longitude => $LNG_DC, local_type => 'Village' }
	);
	ok(defined $result,                            'result returned for postcodes.io');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from latitude');
	# local_type should be downcased into the type field
	is($result->{type}, 'village', 'local_type downcased to type');
};

subtest 'normalise: HERE/Ovi properties.geoLatitude/geoLongitude' => sub {
	my $result = _geocode_with_response(
		{ properties => { geoLatitude => $LAT_DC, geoLongitude => $LNG_DC } }
	);
	ok(defined $result,                            'result returned for HERE/Ovi');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from properties.geoLatitude');
};

subtest 'normalise: DataScienceToolkit results[0].geometry.location.{lat,lng}' => sub {
	my $result = _geocode_with_response(
		{ results => [{ geometry => { location => { lat => $LAT_DC, lng => $LNG_DC } } }] }
	);
	ok(defined $result,                            'result for DataScienceToolkit');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from results[0].geometry.location');
};

subtest 'normalise: OpenCage results[0].geometry.{lat,lng} (no location subkey)' => sub {
	my $result = _geocode_with_response(
		{ results => [{ geometry => { lat => $LAT_DC, lng => $LNG_DC } }] }
	);
	ok(defined $result,                            'result for OpenCage');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from results[0].geometry.lat');
};

subtest 'normalise: GeoCodeFarm RESULTS[0].COORDINATES.{latitude,longitude}' => sub {
	my $result = _geocode_with_response(
		{ RESULTS => [{ COORDINATES => { latitude => $LAT_DC, longitude => $LNG_DC } }] }
	);
	ok(defined $result,                            'result for GeoCodeFarm');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from RESULTS.COORDINATES');
};

subtest 'normalise: US Census result.addressMatches.coordinates.{y=lat, x=lng}' => sub {
	my $result = _geocode_with_response(
		{ result => { addressMatches => [{ coordinates => { y => $LAT_DC, x => $LNG_DC } }] } }
	);
	ok(defined $result,                            'result for US Census');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from coordinates.y');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng from coordinates.x');
};

subtest 'normalise: GeoNames top-level lat/lng (no lon key, avoids OSM branch)' => sub {
	# OSM branch fires on lat && defined(lon); GeoNames uses lng not lon,
	# so the fallback lat/lng branch must handle this case instead.
	my $result = _geocode_with_response({ lat => $LAT_DC, lng => $LNG_DC });
	ok(defined $result,                            'result for GeoNames');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat extracted correctly');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng extracted correctly');
};

subtest 'normalise: Mapbox features[0].center [lng, lat] (GeoJSON order)' => sub {
	# GeoJSON arrays are [longitude, latitude]; center[0]=lng, center[1]=lat
	my $result = _geocode_with_response(
		{ features => [{ center => [$LNG_DC, $LAT_DC] }] }
	);
	ok(defined $result,                            'result for Mapbox');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from center[1]');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng from center[0]');
};

subtest 'normalise: GeoApify features[0].geometry.coordinates [lng, lat]' => sub {
	# GeoJSON: coordinates[0]=lng, coordinates[1]=lat
	my $result = _geocode_with_response(
		{ features => [{ geometry => { coordinates => [$LNG_DC, $LAT_DC] } }] }
	);
	ok(defined $result,                            'result for GeoApify with coordinates');
	is($result->{geometry}{location}{lat}, $LAT_DC, 'lat from coordinates[1]');
	is($result->{geometry}{location}{lng}, $LNG_DC, 'lng from coordinates[0]');
};

subtest 'normalise: GeoApify empty features signals not-found; geocode returns undef' => sub {
	# GeoApify emits a features array with no coords to signal not-found
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return { features => [{}] };
	};
	my $result = $list->geocode($LOC_DC);
	ok(!defined $result, 'geocode returns undef for GeoApify not-found response');
};

subtest 'normalise: geocoder.xyz standard.countryname lifted to address.country' => sub {
	my $result = _geocode_with_response({
		lat      => $LAT_DC,
		lon      => $LNG_DC,
		standard => { countryname => 'United States' },
	});
	ok(defined $result, 'result returned');
	is($result->{address}{country}, 'United States',
		'countryname hoisted from standard.countryname to address.country');
};

subtest 'normalise: geocode returns undef for completely unrecognised structure' => sub {
	my $list = _make_list(MockGeocoder::Alpha->new());
	my $mock = mock_scoped 'MockGeocoder::Alpha::geocode' => sub {
		return { totally_unknown_field => 'whatever' };
	};
	my $result = $list->geocode($LOC_DC);
	ok(!defined $result, 'geocode returns undef when no coordinate fields found');
};

# =============================================================================
# _build_ca_address() - internal helper (plain sub, no $self)
# =============================================================================

subtest '_build_ca_address: assembles US address with correct separators' => sub {
	# Street number + name: space; city/state/country: comma-space
	my $loc = {
		city => 'Bethesda',
		usa  => {
			usstnumber  => '9000',
			usstaddress => 'Rockville Pike',
			uscity      => 'Bethesda',
			state       => 'MD',
		},
	};
	my $result = Geo::Coder::List::_build_ca_address($loc);
	is($result, '9000 Rockville Pike, Bethesda, MD, USA',
		'US address format: number<space>street, city, state, USA');
};

subtest '_build_ca_address: US address without street number' => sub {
	my $loc = { city => 'Bethesda', usa => { uscity => 'Bethesda', state => 'MD' } };
	my $result = Geo::Coder::List::_build_ca_address($loc);
	# city and state should appear; no leading comma from missing number
	like($result,   qr/Bethesda/,  'city present in output');
	like($result,   qr/MD/,        'state present in output');
	like($result,   qr/USA$/,      'country always appended for US branch');
	unlike($result, qr/^,\s*/,     'no leading comma when number absent');
};

subtest '_build_ca_address: assembles Canadian address correctly' => sub {
	my $loc = {
		stnumber  => '22',
		staddress => 'Main Street',
		city      => 'Ottawa',
		prov      => 'ON',
	};
	my $result = Geo::Coder::List::_build_ca_address($loc);
	is($result, '22 Main Street, Ottawa, ON',
		'CA address: number<space>street, city, province');
};

subtest '_build_ca_address: returns empty string when no recognisable fields' => sub {
	my $result = Geo::Coder::List::_build_ca_address({ other => 'stuff' });
	ok(!$result, 'returns empty/false when no city or usa subhash present');
};

subtest '_build_ca_address: Canadian address without street number starts cleanly' => sub {
	my $loc    = { staddress => 'Elm Ave', city => 'Toronto', prov => 'ON' };
	my $result = Geo::Coder::List::_build_ca_address($loc);
	like($result,   qr/Elm Ave/,   'street address in output');
	unlike($result, qr/^\s*,/,     'no leading comma when number is absent');
};

subtest '_build_ca_address: does not clobber $_ in calling scope' => sub {
	local $_ = 'outer_sentinel';
	Geo::Coder::List::_build_ca_address({ stnumber => '1', city => 'X' });
	is($_, 'outer_sentinel', '$_ not modified by _build_ca_address');
};

# =============================================================================
# _cache() - internal helper
# =============================================================================

subtest '_cache: read on uncached key returns undef' => sub {
	my $obj = Geo::Coder::List->new();
	ok(!defined $obj->_cache('never-seen-key'), 'undef for uncached key');
};

subtest '_cache: write then read round-trips a hashref value' => sub {
	my $obj = Geo::Coder::List->new();
	my $val = { geometry => { location => { lat => $LAT_DC, lng => $LNG_DC } } };
	$obj->_cache('London, UK', $val);
	my $rc = $obj->_cache('London, UK');
	ok(defined $rc,                              'cached value retrieved');
	is($rc->{geometry}{location}{lat}, $LAT_DC, 'lat round-trips correctly');
};

subtest '_cache: write undef stores a not-found sentinel; read returns undef' => sub {
	my $obj = Geo::Coder::List->new();
	# Writing undef records "looked up; not found" so backends are not re-tried
	$obj->_cache('Nowhere, XX', undef);
	ok(exists $obj->{locations}{'Nowhere, XX'}, 'sentinel exists in L1');
	ok(!defined $obj->_cache('Nowhere, XX'),    'read of sentinel returns undef');
};

subtest '_cache: not-found sentinel is not propagated to L2 HASH cache' => sub {
	my $l2  = {};
	my $obj = Geo::Coder::List->new(cache => $l2);
	$obj->_cache('No Place', undef);
	ok(!exists $l2->{'No Place'}, 'sentinel not written to L2');
};

subtest '_cache: found result is written to L2 HASH cache' => sub {
	my $l2  = {};
	my $obj = Geo::Coder::List->new(cache => $l2);
	my $val = { geometry => { location => { lat => $LAT_DC, lng => $LNG_DC } } };
	$obj->_cache('Washington DC', $val);
	ok(exists $l2->{'Washington DC'}, 'found result written to L2');
};

subtest '_cache: populates lat/lng/lon aliases on read' => sub {
	my $obj = Geo::Coder::List->new();
	# Write directly to L1 to bypass the write path (testing read path only)
	$obj->{locations}{'mykey'} = {
		geometry => { location => { lat => $LAT_DC, lng => $LNG_DC } },
	};
	my $rc = $obj->_cache('mykey');
	is($rc->{lat}, $LAT_DC, 'lat alias populated on read');
	is($rc->{lng}, $LNG_DC, 'lng alias populated on read');
	is($rc->{lon}, $LNG_DC, 'lon alias (equals lng) populated on read');
};

subtest '_cache: L2 CHI object receives set() call with 1-month TTL for found result' => sub {
	# A minimal CHI-compatible stub that records calls to set()
	my @set_calls;
	my $l2 = bless { _data => {} }, 'FakeCHI::Hit';
	{
		no strict 'refs';
		*{'FakeCHI::Hit::get'} = sub { $_[0]->{_data}{$_[1]} };
		*{'FakeCHI::Hit::set'} = sub {
			my ($self, $key, $val, $ttl) = @_;
			push @set_calls, { key => $key, ttl => $ttl };
			$self->{_data}{$key} = $val;
		};
	}

	my $obj = Geo::Coder::List->new(cache => $l2);
	my $val = { geometry => { location => { lat => $LAT_DC, lng => $LNG_DC } } };
	$obj->_cache('DC', $val);

	is(scalar @set_calls, 1, 'set() called exactly once');
	like($set_calls[0]{ttl}, qr/month/i,
		'TTL for a confirmed location is 1 month');
};

subtest '_cache: set() is not called on L2 for a not-found result' => sub {
	# Not-found sentinel is L1-only; it must not leak into the external L2 store
	my @set_calls;
	my $l2 = bless { _data => {} }, 'FakeCHI::Miss';
	{
		no strict 'refs';
		*{'FakeCHI::Miss::get'} = sub { $_[0]->{_data}{$_[1]} };
		*{'FakeCHI::Miss::set'} = sub {
			my ($self, $key, $val, $ttl) = @_;
			push @set_calls, { key => $key, ttl => $ttl };
		};
	}

	my $obj = Geo::Coder::List->new(cache => $l2);
	$obj->_cache('Nowhere', undef);

	is(scalar @set_calls, 0, 'set() not called on L2 for a not-found result');
};

done_testing();
