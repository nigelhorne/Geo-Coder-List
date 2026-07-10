#!/usr/bin/env perl
# Auto-generated mutant test stubs
# Generated: 2026-07-10 16:19:48
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

# --- SURVIVOR: NUM_BOUNDARY_156_29_< (HIGH) line 156 in new() ---
# Source:  if(scalar keys %{$params} > 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_156_29_< line 156 in new()';
    # Suggested boundary values to test: 0, 1
    # NOTE: new is a class method — call directly.
    my $result = Geo::Coder::List->new(...);
    # ok($result, 'NUM_BOUNDARY_156_29_<: add assertion here');
    # TODO: exercise line 156 in new() to detect the mutant
    fail('NUM_BOUNDARY_156_29_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_350_3 (MEDIUM) line 350 in geocode() ---
# Source:  if(!wantarray) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_350_3 line 350 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 350 in geocode() to detect the mutant
    fail('COND_INV_350_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_361_4 (MEDIUM) line 361 in geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_361_4 line 361 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 361 in geocode() to detect the mutant
    fail('BOOL_NEGATE_361_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_378_4 (MEDIUM) line 378 in geocode() ---
# Source:  if(ref($r) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_378_4 line 378 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 378 in geocode() to detect the mutant
    fail('COND_INV_378_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_385_3 (MEDIUM) line 385 in geocode() ---
# Source:  return @rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_385_3 line 385 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 385 in geocode() to detect the mutant
    fail('BOOL_NEGATE_385_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_390_2 (MEDIUM) line 390 in geocode() ---
# Source:  if(exists $self->{'locations'}{$location}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_390_2 line 390 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 390 in geocode() to detect the mutant
    fail('COND_INV_390_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_392_3 (MEDIUM) line 392 in geocode() ---
# Source:  if(ref($stored) && ref($stored) eq _NOT_FOUND_CLASS) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_392_3 line 392 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 392 in geocode() to detect the mutant
    fail('COND_INV_392_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_394_4 (MEDIUM) line 394 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_394_4 line 394 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 394 in geocode() to detect the mutant
    fail('BOOL_NEGATE_394_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_406_4 (MEDIUM) line 406 in geocode() ---
# Source:  if(exists($geocoder->{'limit'}) && defined(my $limit = $geocoder->{'limit'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_406_4 line 406 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 406 in geocode() to detect the mutant
    fail('COND_INV_406_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_408_15_< (HIGH) line 408 in geocode() ---
# Source:  if($limit <= 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip <= to <
#   Numeric boundary flip <= to >
#   Numeric boundary flip <= to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_408_15_< line 408 in geocode()';
    # Suggested boundary values to test: -1, 0, 1
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 408 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_408_15_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_415_4 (MEDIUM) line 415 in geocode() ---
# Source:  if(my $regex = $geocoder->{'regex'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_415_4 line 415 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 415 in geocode() to detect the mutant
    fail('COND_INV_415_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_418_5 (MEDIUM) line 418 in geocode() ---
# Source:  if($location !~ $regex) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_418_5 line 418 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 418 in geocode() to detect the mutant
    fail('COND_INV_418_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_532_58_> (HIGH) line 532 in geocode() ---
# Source:  Data::Dumper->new([\$l])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_532_58_> line 532 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 532 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_532_58_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_537_4 (MEDIUM) line 537 in geocode() ---
# Source:  if(ref($l) eq 'Geo::Location::Point') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_537_4 line 537 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 537 in geocode() to detect the mutant
    fail('COND_INV_537_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_541_5 (MEDIUM) line 541 in geocode() ---
# Source:  if(!defined($l->{geometry}{location}{lat}) && defined($l->{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_541_5 line 541 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 541 in geocode() to detect the mutant
    fail('COND_INV_541_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_607_7 (MEDIUM) line 607 in geocode() ---
# Source:  if(my $type = $l->{'local_type'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_607_7 line 607 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 607 in geocode() to detect the mutant
    fail('COND_INV_607_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_618_7 (MEDIUM) line 618 in geocode() ---
# Source:  if($l->{'results'}[0]->{'geometry'}->{'location'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_618_7 line 618 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 618 in geocode() to detect the mutant
    fail('COND_INV_618_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_645_7 (MEDIUM) line 645 in geocode() ---
# Source:  if($l->{features}[0]->{center}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_645_7 line 645 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 645 in geocode() to detect the mutant
    fail('COND_INV_645_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_678_6 (MEDIUM) line 678 in geocode() ---
# Source:  if($l->{'standard'}{'countryname'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_678_6 line 678 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 678 in geocode() to detect the mutant
    fail('COND_INV_678_6: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_717_23_> (HIGH) line 717 in geocode() ---
# Source:  if($self->{'debug'} >= 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_717_23_> line 717 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 717 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_717_23_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_734_4 (MEDIUM) line 734 in geocode() ---
# Source:  if(defined($rc[0]->{'long'}) && !defined($rc[0]->{'lon'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_734_4 line 734 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 734 in geocode() to detect the mutant
    fail('COND_INV_734_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_761_2 (MEDIUM) line 761 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_761_2 line 761 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 761 in geocode() to detect the mutant
    fail('BOOL_NEGATE_761_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_819_3 (MEDIUM) line 819 in ua() ---
# Source:  if($ua->can('clone') && $ua->can('agent')) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_819_3 line 819 in ua()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 819 in ua() to detect the mutant
    fail('COND_INV_819_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_831_2 (MEDIUM) line 831 in ua() ---
# Source:  return $ua;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_831_2 line 831 in ua()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 831 in ua() to detect the mutant
    fail('BOOL_NEGATE_831_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_885_2 (MEDIUM) line 885 in reverse_geocode() ---
# Source:  if(my $rc = $self->_cache($latlng)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_885_2 line 885 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 885 in reverse_geocode() to detect the mutant
    fail('COND_INV_885_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_886_3 (MEDIUM) line 886 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_886_3 line 886 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 886 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_886_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_895_3 (MEDIUM) line 895 in reverse_geocode() ---
# Source:  if(ref($geocoder) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_895_3 line 895 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 895 in reverse_geocode() to detect the mutant
    fail('COND_INV_895_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_896_4 (MEDIUM) line 896 in reverse_geocode() ---
# Source:  if(exists($geocoder->{'limit'}) && defined(my $limit = $geocoder->{'limit'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_896_4 line 896 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 896 in reverse_geocode() to detect the mutant
    fail('COND_INV_896_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_898_15_< (HIGH) line 898 in reverse_geocode() ---
# Source:  if($limit <= 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip <= to <
#   Numeric boundary flip <= to >
#   Numeric boundary flip <= to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_898_15_< line 898 in reverse_geocode()';
    # Suggested boundary values to test: -1, 0, 1
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 898 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_898_15_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_908_3 (MEDIUM) line 908 in reverse_geocode() ---
# Source:  if(wantarray) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_908_3 line 908 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 908 in reverse_geocode() to detect the mutant
    fail('COND_INV_908_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_919_4 (MEDIUM) line 919 in reverse_geocode() ---
# Source:  if($@ =~ /Unknown parameter.*latlng|latlng.*[Uu]nknown/s) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_919_4 line 919 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 919 in reverse_geocode() to detect the mutant
    fail('COND_INV_919_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_926_4 (MEDIUM) line 926 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_926_4 line 926 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 926 in reverse_geocode() to detect the mutant
    fail('COND_INV_926_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_939_66_> (HIGH) line 939 in reverse_geocode() ---
# Source:  print Data::Dumper->new([\@locs])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_939_66_> line 939 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 939 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_939_66_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_942_5 (MEDIUM) line 942 in reverse_geocode() ---
# Source:  if(my $name = $loc->{'display_name'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_942_5 line 942 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 942 in reverse_geocode() to detect the mutant
    fail('COND_INV_942_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_966_4 (MEDIUM) line 966 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_966_4 line 966 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 966 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_966_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_974_4 (MEDIUM) line 974 in reverse_geocode() ---
# Source:  if($@ =~ /Unknown parameter.*latlng|latlng.*[Uu]nknown/s) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_974_4 line 974 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 974 in reverse_geocode() to detect the mutant
    fail('COND_INV_974_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_981_4 (MEDIUM) line 981 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_981_4 line 981 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 981 in reverse_geocode() to detect the mutant
    fail('COND_INV_981_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_996_4 (MEDIUM) line 996 in reverse_geocode() ---
# Source:  if(!ref($rc)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_996_4 line 996 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 996 in reverse_geocode() to detect the mutant
    fail('COND_INV_996_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1005_5 (MEDIUM) line 1005 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1005_5 line 1005 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1005 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1005_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_1008_63_> (HIGH) line 1008 in reverse_geocode() ---
# Source:  print Data::Dumper->new([$rc])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_1008_63_> line 1008 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1008 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_1008_63_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1010_4 (MEDIUM) line 1010 in reverse_geocode() ---
# Source:  if(my $name = $rc->{'display_name'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1010_4 line 1010 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1010 in reverse_geocode() to detect the mutant
    fail('COND_INV_1010_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1020_5 (MEDIUM) line 1020 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1020_5 line 1020 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1020 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1020_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1023_4 (MEDIUM) line 1023 in reverse_geocode() ---
# Source:  if($rc->{'city'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1023_4 line 1023 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1023 in reverse_geocode() to detect the mutant
    fail('COND_INV_1023_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1034_5 (MEDIUM) line 1034 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1034_5 line 1034 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1034 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1034_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1037_4 (MEDIUM) line 1037 in reverse_geocode() ---
# Source:  if($rc->{features}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1037_4 line 1037 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1037 in reverse_geocode() to detect the mutant
    fail('COND_INV_1037_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1048_5 (MEDIUM) line 1048 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1048_5 line 1048 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1048 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1048_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1132_2 (MEDIUM) line 1132 in flush() ---
# Source:  return $self;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1132_2 line 1132 in flush()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1132 in flush() to detect the mutant
    fail('BOOL_NEGATE_1132_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1157_2 (MEDIUM) line 1157 in _build_ca_address() ---
# Source:  if(my $usa = $loc->{'usa'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1157_2 line 1157 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1157 in _build_ca_address() to detect the mutant
    fail('COND_INV_1157_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1176_2 (MEDIUM) line 1176 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1176_2 line 1176 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1176 in _build_ca_address() to detect the mutant
    fail('BOOL_NEGATE_1176_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1231_6 (MEDIUM) line 1231 in _cache() ---
# Source:  if(blessed($item) && ref($item->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1231_6 line 1231 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1231 in _cache() to detect the mutant
    fail('COND_INV_1231_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1241_6 (MEDIUM) line 1241 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1241_6 line 1241 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1241 in _cache() to detect the mutant
    fail('COND_INV_1241_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1247_6 (MEDIUM) line 1247 in _cache() ---
# Source:  unless(defined($item->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1247_6 line 1247 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1247 in _cache() to detect the mutant
    fail('COND_INV_1247_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1267_5 (MEDIUM) line 1267 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1267_5 line 1267 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1267 in _cache() to detect the mutant
    fail('COND_INV_1267_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1273_5 (MEDIUM) line 1273 in _cache() ---
# Source:  if(defined($value->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1273_5 line 1273 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1273 in _cache() to detect the mutant
    fail('COND_INV_1273_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1294_5 (MEDIUM) line 1294 in _cache() ---
# Source:  if(ref($value) && ref($value->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1294_5 line 1294 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1294 in _cache() to detect the mutant
    fail('COND_INV_1294_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1303_4 (MEDIUM) line 1303 in _cache() ---
# Source:  if(!defined($value)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1303_4 line 1303 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1303 in _cache() to detect the mutant
    fail('COND_INV_1303_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1312_3 (MEDIUM) line 1312 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1312_3 line 1312 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1312 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1312_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1335_2 (MEDIUM) line 1335 in _cache() ---
# Source:  if(ref($rc) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1335_2 line 1335 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1335 in _cache() to detect the mutant
    fail('COND_INV_1335_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1342_2 (MEDIUM) line 1342 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1342_2 line 1342 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1342 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1342_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1349_2 (MEDIUM) line 1349 in _debug() ---
# Source:  if(my $logger = $self->{logger}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1349_2 line 1349 in _debug()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1349 in _debug() to detect the mutant
    fail('COND_INV_1349_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1352_2 (MEDIUM) line 1352 in _debug() ---
# Source:  if($self->{debug}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1352_2 line 1352 in _debug()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1352 in _debug() to detect the mutant
    fail('COND_INV_1352_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1361_2 (MEDIUM) line 1361 in _warn() ---
# Source:  if(my $logger = $self->{logger}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1361_2 line 1361 in _warn()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1361 in _warn() to detect the mutant
    fail('COND_INV_1361_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1372_2 (MEDIUM) line 1372 in _error() ---
# Source:  if(my $logger = $self->{logger}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1372_2 line 1372 in _error()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1372 in _error() to detect the mutant
    fail('COND_INV_1372_2: replace with real assertion');
}

# --- LOW DIFFICULTY HINTS (comment stubs) ---

# --- LOW HINT: RETURN_UNDEF_361_4 line 361 in geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_361_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_385_3 line 385 in geocode() ---
# Source:  return @rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_385_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_394_4 line 394 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_394_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_761_2 line 761 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_761_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_831_2 line 831 in ua() ---
# Source:  return $ua;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_831_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_886_3 line 886 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_886_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_966_4 line 966 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_966_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1005_5 line 1005 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1005_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1020_5 line 1020 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1020_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1034_5 line 1034 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1034_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1048_5 line 1048 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1048_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1132_2 line 1132 in flush() ---
# Source:  return $self;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1132_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1176_2 line 1176 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1176_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1312_3 line 1312 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1312_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1342_2 line 1342 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1342_2: add assertion here');

done_testing();
