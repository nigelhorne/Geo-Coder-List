#!/usr/bin/env perl
# Auto-generated mutant test stubs
# Generated: 2026-06-04 14:01:21
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

# --- SURVIVOR: COND_INV_455_4 (MEDIUM) line 455 in geocode() ---
# Source:  if(my $logger = $self->{logger}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_455_4 line 455 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 455 in geocode() to detect the mutant
    fail('COND_INV_455_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_535_58_> (HIGH) line 535 in geocode() ---
# Source:  Data::Dumper->new([\$l])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_535_58_> line 535 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 535 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_535_58_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_540_4 (MEDIUM) line 540 in geocode() ---
# Source:  if(ref($l) eq 'Geo::Location::Point') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_540_4 line 540 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 540 in geocode() to detect the mutant
    fail('COND_INV_540_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_544_5 (MEDIUM) line 544 in geocode() ---
# Source:  if(!defined($l->{geometry}{location}{lat}) && defined($l->{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_544_5 line 544 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 544 in geocode() to detect the mutant
    fail('COND_INV_544_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_610_7 (MEDIUM) line 610 in geocode() ---
# Source:  if(my $type = $l->{'local_type'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_610_7 line 610 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 610 in geocode() to detect the mutant
    fail('COND_INV_610_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_621_7 (MEDIUM) line 621 in geocode() ---
# Source:  if($l->{'results'}[0]->{'geometry'}->{'location'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_621_7 line 621 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 621 in geocode() to detect the mutant
    fail('COND_INV_621_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_648_7 (MEDIUM) line 648 in geocode() ---
# Source:  if($l->{features}[0]->{center}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_648_7 line 648 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 648 in geocode() to detect the mutant
    fail('COND_INV_648_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_681_6 (MEDIUM) line 681 in geocode() ---
# Source:  if($l->{'standard'}{'countryname'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_681_6 line 681 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 681 in geocode() to detect the mutant
    fail('COND_INV_681_6: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_720_23_> (HIGH) line 720 in geocode() ---
# Source:  if($self->{'debug'} >= 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_720_23_> line 720 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 720 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_720_23_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_737_4 (MEDIUM) line 737 in geocode() ---
# Source:  if(defined($rc[0]->{'long'}) && !defined($rc[0]->{'lon'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_737_4 line 737 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 737 in geocode() to detect the mutant
    fail('COND_INV_737_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_764_2 (MEDIUM) line 764 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_764_2 line 764 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 764 in geocode() to detect the mutant
    fail('BOOL_NEGATE_764_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_822_3 (MEDIUM) line 822 in ua() ---
# Source:  if($ua->can('clone') && $ua->can('agent')) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_822_3 line 822 in ua()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 822 in ua() to detect the mutant
    fail('COND_INV_822_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_834_2 (MEDIUM) line 834 in ua() ---
# Source:  return $ua;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_834_2 line 834 in ua()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 834 in ua() to detect the mutant
    fail('BOOL_NEGATE_834_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_889_2 (MEDIUM) line 889 in reverse_geocode() ---
# Source:  if(my $rc = $self->_cache($latlng)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_889_2 line 889 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 889 in reverse_geocode() to detect the mutant
    fail('COND_INV_889_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_890_3 (MEDIUM) line 890 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_890_3 line 890 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 890 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_890_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_899_3 (MEDIUM) line 899 in reverse_geocode() ---
# Source:  if(ref($geocoder) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_899_3 line 899 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 899 in reverse_geocode() to detect the mutant
    fail('COND_INV_899_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_900_4 (MEDIUM) line 900 in reverse_geocode() ---
# Source:  if(exists($geocoder->{'limit'}) && defined(my $limit = $geocoder->{'limit'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_900_4 line 900 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 900 in reverse_geocode() to detect the mutant
    fail('COND_INV_900_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_902_15_< (HIGH) line 902 in reverse_geocode() ---
# Source:  if($limit <= 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip <= to <
#   Numeric boundary flip <= to >
#   Numeric boundary flip <= to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_902_15_< line 902 in reverse_geocode()';
    # Suggested boundary values to test: -1, 0, 1
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 902 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_902_15_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_912_3 (MEDIUM) line 912 in reverse_geocode() ---
# Source:  if(wantarray) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_912_3 line 912 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 912 in reverse_geocode() to detect the mutant
    fail('COND_INV_912_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_923_4 (MEDIUM) line 923 in reverse_geocode() ---
# Source:  if($@ =~ /Unknown parameter.*latlng|latlng.*[Uu]nknown/s) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_923_4 line 923 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 923 in reverse_geocode() to detect the mutant
    fail('COND_INV_923_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_930_4 (MEDIUM) line 930 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_930_4 line 930 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 930 in reverse_geocode() to detect the mutant
    fail('COND_INV_930_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_943_66_> (HIGH) line 943 in reverse_geocode() ---
# Source:  print Data::Dumper->new([\@locs])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_943_66_> line 943 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 943 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_943_66_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_946_5 (MEDIUM) line 946 in reverse_geocode() ---
# Source:  if(my $name = $loc->{'display_name'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_946_5 line 946 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 946 in reverse_geocode() to detect the mutant
    fail('COND_INV_946_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_970_4 (MEDIUM) line 970 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_970_4 line 970 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 970 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_970_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_978_4 (MEDIUM) line 978 in reverse_geocode() ---
# Source:  if($@ =~ /Unknown parameter.*latlng|latlng.*[Uu]nknown/s) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_978_4 line 978 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 978 in reverse_geocode() to detect the mutant
    fail('COND_INV_978_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_985_4 (MEDIUM) line 985 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_985_4 line 985 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 985 in reverse_geocode() to detect the mutant
    fail('COND_INV_985_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1000_4 (MEDIUM) line 1000 in reverse_geocode() ---
# Source:  if(!ref($rc)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1000_4 line 1000 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1000 in reverse_geocode() to detect the mutant
    fail('COND_INV_1000_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1009_5 (MEDIUM) line 1009 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1009_5 line 1009 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1009 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1009_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_1012_63_> (HIGH) line 1012 in reverse_geocode() ---
# Source:  print Data::Dumper->new([$rc])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_1012_63_> line 1012 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1012 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_1012_63_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1014_4 (MEDIUM) line 1014 in reverse_geocode() ---
# Source:  if(my $name = $rc->{'display_name'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1014_4 line 1014 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1014 in reverse_geocode() to detect the mutant
    fail('COND_INV_1014_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1024_5 (MEDIUM) line 1024 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1024_5 line 1024 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1024 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1024_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1027_4 (MEDIUM) line 1027 in reverse_geocode() ---
# Source:  if($rc->{'city'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1027_4 line 1027 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1027 in reverse_geocode() to detect the mutant
    fail('COND_INV_1027_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1038_5 (MEDIUM) line 1038 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1038_5 line 1038 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1038 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1038_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1041_4 (MEDIUM) line 1041 in reverse_geocode() ---
# Source:  if($rc->{features}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1041_4 line 1041 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1041 in reverse_geocode() to detect the mutant
    fail('COND_INV_1041_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1052_5 (MEDIUM) line 1052 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1052_5 line 1052 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1052 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1052_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1136_2 (MEDIUM) line 1136 in flush() ---
# Source:  return $self;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1136_2 line 1136 in flush()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1136 in flush() to detect the mutant
    fail('BOOL_NEGATE_1136_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1161_2 (MEDIUM) line 1161 in _build_ca_address() ---
# Source:  if(my $usa = $loc->{'usa'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1161_2 line 1161 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1161 in _build_ca_address() to detect the mutant
    fail('COND_INV_1161_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1180_2 (MEDIUM) line 1180 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1180_2 line 1180 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1180 in _build_ca_address() to detect the mutant
    fail('BOOL_NEGATE_1180_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1235_6 (MEDIUM) line 1235 in _cache() ---
# Source:  if(blessed($item) && ref($item->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1235_6 line 1235 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1235 in _cache() to detect the mutant
    fail('COND_INV_1235_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1245_6 (MEDIUM) line 1245 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1245_6 line 1245 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1245 in _cache() to detect the mutant
    fail('COND_INV_1245_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1251_6 (MEDIUM) line 1251 in _cache() ---
# Source:  unless(defined($item->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1251_6 line 1251 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1251 in _cache() to detect the mutant
    fail('COND_INV_1251_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1271_5 (MEDIUM) line 1271 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1271_5 line 1271 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1271 in _cache() to detect the mutant
    fail('COND_INV_1271_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1277_5 (MEDIUM) line 1277 in _cache() ---
# Source:  if(defined($value->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1277_5 line 1277 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1277 in _cache() to detect the mutant
    fail('COND_INV_1277_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1298_5 (MEDIUM) line 1298 in _cache() ---
# Source:  if(ref($value) && ref($value->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1298_5 line 1298 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1298 in _cache() to detect the mutant
    fail('COND_INV_1298_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1307_4 (MEDIUM) line 1307 in _cache() ---
# Source:  if(!defined($value)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1307_4 line 1307 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1307 in _cache() to detect the mutant
    fail('COND_INV_1307_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1316_3 (MEDIUM) line 1316 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1316_3 line 1316 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1316 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1316_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1339_2 (MEDIUM) line 1339 in _cache() ---
# Source:  if(ref($rc) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1339_2 line 1339 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1339 in _cache() to detect the mutant
    fail('COND_INV_1339_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1346_2 (MEDIUM) line 1346 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1346_2 line 1346 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1346 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1346_2: replace with real assertion');
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

# --- LOW HINT: RETURN_UNDEF_764_2 line 764 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_764_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_834_2 line 834 in ua() ---
# Source:  return $ua;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_834_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_890_3 line 890 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_890_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_970_4 line 970 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_970_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1009_5 line 1009 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1009_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1024_5 line 1024 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1024_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1038_5 line 1038 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1038_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1052_5 line 1052 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1052_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1136_2 line 1136 in flush() ---
# Source:  return $self;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1136_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1180_2 line 1180 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1180_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1316_3 line 1316 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1316_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1346_2 line 1346 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1346_2: add assertion here');

done_testing();
