#!/usr/bin/env perl
# Auto-generated mutant test stubs
# Generated: 2026-06-04 12:31:01
# Generator: scripts/test-generator-index
#
# DO NOT COMMIT without completing the TODO sections.
#
# HIGH/MEDIUM difficulty survivors have TODO stubs — these need real tests.
# LOW difficulty survivors appear as comment hints — worth improving.
#
# Stubs call new() for modules with a constructor, or show a class method
# placeholder for modules without one. Add arguments as needed.

use strict;
use warnings;
use Test::More;

use_ok('Geo::Coder::List');

################################################################
# FILE: lib/Geo/Coder/List.pm
################################################################
# --- SURVIVORS (TODO stubs) ---

# --- SURVIVOR: NUM_BOUNDARY_157_29_< (HIGH) line 157 in new() ---
# Source:  if(scalar keys %{$params} > 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_157_29_< line 157 in new()';
    # Suggested boundary values to test: 0, 1
    # NOTE: new is a class method — call directly.
    my $result = Geo::Coder::List->new(...);
    # ok($result, 'NUM_BOUNDARY_157_29_<: add assertion here');
    # TODO: exercise line 157 in new() to detect the mutant
    fail('NUM_BOUNDARY_157_29_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_351_3 (MEDIUM) line 351 in geocode() ---
# Source:  if(!wantarray) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_351_3 line 351 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 351 in geocode() to detect the mutant
    fail('COND_INV_351_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_362_4 (MEDIUM) line 362 in geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_362_4 line 362 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 362 in geocode() to detect the mutant
    fail('BOOL_NEGATE_362_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_379_4 (MEDIUM) line 379 in geocode() ---
# Source:  if(ref($r) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_379_4 line 379 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 379 in geocode() to detect the mutant
    fail('COND_INV_379_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_386_3 (MEDIUM) line 386 in geocode() ---
# Source:  return @rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_386_3 line 386 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 386 in geocode() to detect the mutant
    fail('BOOL_NEGATE_386_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_391_2 (MEDIUM) line 391 in geocode() ---
# Source:  if(exists $self->{'locations'}{$location}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_391_2 line 391 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 391 in geocode() to detect the mutant
    fail('COND_INV_391_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_393_3 (MEDIUM) line 393 in geocode() ---
# Source:  if(ref($stored) && ref($stored) eq _NOT_FOUND_CLASS) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_393_3 line 393 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 393 in geocode() to detect the mutant
    fail('COND_INV_393_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_395_4 (MEDIUM) line 395 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_395_4 line 395 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 395 in geocode() to detect the mutant
    fail('BOOL_NEGATE_395_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_407_4 (MEDIUM) line 407 in geocode() ---
# Source:  if(exists($geocoder->{'limit'}) && defined(my $limit = $geocoder->{'limit'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_407_4 line 407 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 407 in geocode() to detect the mutant
    fail('COND_INV_407_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_409_15_< (HIGH) line 409 in geocode() ---
# Source:  if($limit <= 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip <= to <
#   Numeric boundary flip <= to >
#   Numeric boundary flip <= to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_409_15_< line 409 in geocode()';
    # Suggested boundary values to test: -1, 0, 1
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 409 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_409_15_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_416_4 (MEDIUM) line 416 in geocode() ---
# Source:  if(my $regex = $geocoder->{'regex'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_416_4 line 416 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 416 in geocode() to detect the mutant
    fail('COND_INV_416_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_419_5 (MEDIUM) line 419 in geocode() ---
# Source:  if($location !~ $regex) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_419_5 line 419 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 419 in geocode() to detect the mutant
    fail('COND_INV_419_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_533_58_> (HIGH) line 533 in geocode() ---
# Source:  Data::Dumper->new([\$l])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_533_58_> line 533 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 533 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_533_58_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_538_4 (MEDIUM) line 538 in geocode() ---
# Source:  if(ref($l) eq 'Geo::Location::Point') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_538_4 line 538 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 538 in geocode() to detect the mutant
    fail('COND_INV_538_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_542_5 (MEDIUM) line 542 in geocode() ---
# Source:  if(!defined($l->{geometry}{location}{lat}) && defined($l->{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_542_5 line 542 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 542 in geocode() to detect the mutant
    fail('COND_INV_542_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_608_7 (MEDIUM) line 608 in geocode() ---
# Source:  if(my $type = $l->{'local_type'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_608_7 line 608 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 608 in geocode() to detect the mutant
    fail('COND_INV_608_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_619_7 (MEDIUM) line 619 in geocode() ---
# Source:  if($l->{'results'}[0]->{'geometry'}->{'location'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_619_7 line 619 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 619 in geocode() to detect the mutant
    fail('COND_INV_619_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_646_7 (MEDIUM) line 646 in geocode() ---
# Source:  if($l->{features}[0]->{center}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_646_7 line 646 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 646 in geocode() to detect the mutant
    fail('COND_INV_646_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_679_6 (MEDIUM) line 679 in geocode() ---
# Source:  if($l->{'standard'}{'countryname'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_679_6 line 679 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 679 in geocode() to detect the mutant
    fail('COND_INV_679_6: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_718_23_> (HIGH) line 718 in geocode() ---
# Source:  if($self->{'debug'} >= 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_718_23_> line 718 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 718 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_718_23_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_735_4 (MEDIUM) line 735 in geocode() ---
# Source:  if(defined($rc[0]->{'long'}) && !defined($rc[0]->{'lon'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_735_4 line 735 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 735 in geocode() to detect the mutant
    fail('COND_INV_735_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_762_2 (MEDIUM) line 762 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_762_2 line 762 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 762 in geocode() to detect the mutant
    fail('BOOL_NEGATE_762_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_820_3 (MEDIUM) line 820 in ua() ---
# Source:  if($ua->can('clone') && $ua->can('agent')) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_820_3 line 820 in ua()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 820 in ua() to detect the mutant
    fail('COND_INV_820_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_832_2 (MEDIUM) line 832 in ua() ---
# Source:  return $ua;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_832_2 line 832 in ua()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 832 in ua() to detect the mutant
    fail('BOOL_NEGATE_832_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_887_2 (MEDIUM) line 887 in reverse_geocode() ---
# Source:  if(my $rc = $self->_cache($latlng)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_887_2 line 887 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 887 in reverse_geocode() to detect the mutant
    fail('COND_INV_887_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_888_3 (MEDIUM) line 888 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_888_3 line 888 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 888 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_888_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_897_3 (MEDIUM) line 897 in reverse_geocode() ---
# Source:  if(ref($geocoder) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_897_3 line 897 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 897 in reverse_geocode() to detect the mutant
    fail('COND_INV_897_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_898_4 (MEDIUM) line 898 in reverse_geocode() ---
# Source:  if(exists($geocoder->{'limit'}) && defined(my $limit = $geocoder->{'limit'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_898_4 line 898 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 898 in reverse_geocode() to detect the mutant
    fail('COND_INV_898_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_900_15_< (HIGH) line 900 in reverse_geocode() ---
# Source:  if($limit <= 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip <= to <
#   Numeric boundary flip <= to >
#   Numeric boundary flip <= to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_900_15_< line 900 in reverse_geocode()';
    # Suggested boundary values to test: -1, 0, 1
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 900 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_900_15_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_910_3 (MEDIUM) line 910 in reverse_geocode() ---
# Source:  if(wantarray) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_910_3 line 910 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 910 in reverse_geocode() to detect the mutant
    fail('COND_INV_910_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_921_4 (MEDIUM) line 921 in reverse_geocode() ---
# Source:  if($@ =~ /Unknown parameter.*latlng|latlng.*[Uu]nknown/s) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_921_4 line 921 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 921 in reverse_geocode() to detect the mutant
    fail('COND_INV_921_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_928_4 (MEDIUM) line 928 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_928_4 line 928 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 928 in reverse_geocode() to detect the mutant
    fail('COND_INV_928_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_941_66_> (HIGH) line 941 in reverse_geocode() ---
# Source:  print Data::Dumper->new([\@locs])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_941_66_> line 941 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 941 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_941_66_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_944_5 (MEDIUM) line 944 in reverse_geocode() ---
# Source:  if(my $name = $loc->{'display_name'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_944_5 line 944 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 944 in reverse_geocode() to detect the mutant
    fail('COND_INV_944_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_968_4 (MEDIUM) line 968 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_968_4 line 968 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 968 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_968_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_976_4 (MEDIUM) line 976 in reverse_geocode() ---
# Source:  if($@ =~ /Unknown parameter.*latlng|latlng.*[Uu]nknown/s) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_976_4 line 976 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 976 in reverse_geocode() to detect the mutant
    fail('COND_INV_976_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_983_4 (MEDIUM) line 983 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_983_4 line 983 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 983 in reverse_geocode() to detect the mutant
    fail('COND_INV_983_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_998_4 (MEDIUM) line 998 in reverse_geocode() ---
# Source:  if(!ref($rc)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_998_4 line 998 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 998 in reverse_geocode() to detect the mutant
    fail('COND_INV_998_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1007_5 (MEDIUM) line 1007 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1007_5 line 1007 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1007 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1007_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_1010_63_> (HIGH) line 1010 in reverse_geocode() ---
# Source:  print Data::Dumper->new([$rc])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_1010_63_> line 1010 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1010 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_1010_63_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1012_4 (MEDIUM) line 1012 in reverse_geocode() ---
# Source:  if(my $name = $rc->{'display_name'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1012_4 line 1012 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1012 in reverse_geocode() to detect the mutant
    fail('COND_INV_1012_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1022_5 (MEDIUM) line 1022 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1022_5 line 1022 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1022 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1022_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1025_4 (MEDIUM) line 1025 in reverse_geocode() ---
# Source:  if($rc->{'city'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1025_4 line 1025 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1025 in reverse_geocode() to detect the mutant
    fail('COND_INV_1025_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1036_5 (MEDIUM) line 1036 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1036_5 line 1036 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1036 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1036_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1039_4 (MEDIUM) line 1039 in reverse_geocode() ---
# Source:  if($rc->{features}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1039_4 line 1039 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1039 in reverse_geocode() to detect the mutant
    fail('COND_INV_1039_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1050_5 (MEDIUM) line 1050 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1050_5 line 1050 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1050 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1050_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1134_2 (MEDIUM) line 1134 in flush() ---
# Source:  return $self;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1134_2 line 1134 in flush()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1134 in flush() to detect the mutant
    fail('BOOL_NEGATE_1134_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1159_2 (MEDIUM) line 1159 in _build_ca_address() ---
# Source:  if(my $usa = $loc->{'usa'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1159_2 line 1159 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1159 in _build_ca_address() to detect the mutant
    fail('COND_INV_1159_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1178_2 (MEDIUM) line 1178 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1178_2 line 1178 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1178 in _build_ca_address() to detect the mutant
    fail('BOOL_NEGATE_1178_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1233_6 (MEDIUM) line 1233 in _cache() ---
# Source:  if(blessed($item) && ref($item->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1233_6 line 1233 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1233 in _cache() to detect the mutant
    fail('COND_INV_1233_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1243_6 (MEDIUM) line 1243 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1243_6 line 1243 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1243 in _cache() to detect the mutant
    fail('COND_INV_1243_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1249_6 (MEDIUM) line 1249 in _cache() ---
# Source:  unless(defined($item->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1249_6 line 1249 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1249 in _cache() to detect the mutant
    fail('COND_INV_1249_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1269_5 (MEDIUM) line 1269 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1269_5 line 1269 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1269 in _cache() to detect the mutant
    fail('COND_INV_1269_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1275_5 (MEDIUM) line 1275 in _cache() ---
# Source:  if(defined($value->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1275_5 line 1275 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1275 in _cache() to detect the mutant
    fail('COND_INV_1275_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1296_5 (MEDIUM) line 1296 in _cache() ---
# Source:  if(ref($value) && ref($value->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1296_5 line 1296 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1296 in _cache() to detect the mutant
    fail('COND_INV_1296_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1305_4 (MEDIUM) line 1305 in _cache() ---
# Source:  if(!defined($value)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1305_4 line 1305 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1305 in _cache() to detect the mutant
    fail('COND_INV_1305_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1314_3 (MEDIUM) line 1314 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1314_3 line 1314 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1314 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1314_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1337_2 (MEDIUM) line 1337 in _cache() ---
# Source:  if(ref($rc) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1337_2 line 1337 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1337 in _cache() to detect the mutant
    fail('COND_INV_1337_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1344_2 (MEDIUM) line 1344 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1344_2 line 1344 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1344 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1344_2: replace with real assertion');
}

# --- LOW DIFFICULTY HINTS (comment stubs) ---

# --- LOW HINT: RETURN_UNDEF_362_4 line 362 in geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_362_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_386_3 line 386 in geocode() ---
# Source:  return @rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_386_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_395_4 line 395 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_395_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_762_2 line 762 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_762_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_832_2 line 832 in ua() ---
# Source:  return $ua;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_832_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_888_3 line 888 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_888_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_968_4 line 968 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_968_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1007_5 line 1007 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1007_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1022_5 line 1022 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1022_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1036_5 line 1036 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1036_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1050_5 line 1050 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1050_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1134_2 line 1134 in flush() ---
# Source:  return $self;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1134_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1178_2 line 1178 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1178_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1314_3 line 1314 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1314_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1344_2 line 1344 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1344_2: add assertion here');

done_testing();
