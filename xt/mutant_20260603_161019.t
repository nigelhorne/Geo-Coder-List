#!/usr/bin/env perl
# Auto-generated mutant test stubs
# Generated: 2026-06-03 16:10:19
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

# --- SURVIVOR: NUM_BOUNDARY_166_29_< (HIGH) line 166 in new() ---
# Source:  if(scalar keys %{$params} > 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_166_29_< line 166 in new()';
    # Suggested boundary values to test: 0, 1
    # NOTE: new is a class method — call directly.
    my $result = Geo::Coder::List->new(...);
    # ok($result, 'NUM_BOUNDARY_166_29_<: add assertion here');
    # TODO: exercise line 166 in new() to detect the mutant
    fail('NUM_BOUNDARY_166_29_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_366_3 (MEDIUM) line 366 in geocode() ---
# Source:  if(!wantarray) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_366_3 line 366 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 366 in geocode() to detect the mutant
    fail('COND_INV_366_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_377_4 (MEDIUM) line 377 in geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_377_4 line 377 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 377 in geocode() to detect the mutant
    fail('BOOL_NEGATE_377_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_394_4 (MEDIUM) line 394 in geocode() ---
# Source:  if(ref($r) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_394_4 line 394 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 394 in geocode() to detect the mutant
    fail('COND_INV_394_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_401_3 (MEDIUM) line 401 in geocode() ---
# Source:  return @rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_401_3 line 401 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 401 in geocode() to detect the mutant
    fail('BOOL_NEGATE_401_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_406_2 (MEDIUM) line 406 in geocode() ---
# Source:  if(exists $self->{'locations'}{$location}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_406_2 line 406 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 406 in geocode() to detect the mutant
    fail('COND_INV_406_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_408_3 (MEDIUM) line 408 in geocode() ---
# Source:  if(ref($stored) && ref($stored) eq _NOT_FOUND_CLASS) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_408_3 line 408 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 408 in geocode() to detect the mutant
    fail('COND_INV_408_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_410_4 (MEDIUM) line 410 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_410_4 line 410 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 410 in geocode() to detect the mutant
    fail('BOOL_NEGATE_410_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_422_4 (MEDIUM) line 422 in geocode() ---
# Source:  if(exists($geocoder->{'limit'}) && defined(my $limit = $geocoder->{'limit'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_422_4 line 422 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 422 in geocode() to detect the mutant
    fail('COND_INV_422_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_424_15_< (HIGH) line 424 in geocode() ---
# Source:  if($limit <= 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip <= to <
#   Numeric boundary flip <= to >
#   Numeric boundary flip <= to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_424_15_< line 424 in geocode()';
    # Suggested boundary values to test: -1, 0, 1
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 424 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_424_15_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_431_4 (MEDIUM) line 431 in geocode() ---
# Source:  if(my $regex = $geocoder->{'regex'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_431_4 line 431 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 431 in geocode() to detect the mutant
    fail('COND_INV_431_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_434_5 (MEDIUM) line 434 in geocode() ---
# Source:  if($location !~ $regex) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_434_5 line 434 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 434 in geocode() to detect the mutant
    fail('COND_INV_434_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_539_58_> (HIGH) line 539 in geocode() ---
# Source:  Data::Dumper->new([\$l])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_539_58_> line 539 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 539 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_539_58_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_544_4 (MEDIUM) line 544 in geocode() ---
# Source:  if(ref($l) eq 'Geo::Location::Point') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_544_4 line 544 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 544 in geocode() to detect the mutant
    fail('COND_INV_544_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_548_5 (MEDIUM) line 548 in geocode() ---
# Source:  if(!defined($l->{geometry}{location}{lat}) && defined($l->{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_548_5 line 548 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 548 in geocode() to detect the mutant
    fail('COND_INV_548_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_614_7 (MEDIUM) line 614 in geocode() ---
# Source:  if(my $type = $l->{'local_type'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_614_7 line 614 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 614 in geocode() to detect the mutant
    fail('COND_INV_614_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_625_7 (MEDIUM) line 625 in geocode() ---
# Source:  if($l->{'results'}[0]->{'geometry'}->{'location'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_625_7 line 625 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 625 in geocode() to detect the mutant
    fail('COND_INV_625_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_652_7 (MEDIUM) line 652 in geocode() ---
# Source:  if($l->{features}[0]->{center}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_652_7 line 652 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 652 in geocode() to detect the mutant
    fail('COND_INV_652_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_685_6 (MEDIUM) line 685 in geocode() ---
# Source:  if($l->{'standard'}{'countryname'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_685_6 line 685 in geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 685 in geocode() to detect the mutant
    fail('COND_INV_685_6: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_724_23_> (HIGH) line 724 in geocode() ---
# Source:  if($self->{'debug'} >= 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_724_23_> line 724 in geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 724 in geocode() to detect the mutant
    fail('NUM_BOUNDARY_724_23_>: replace with real assertion');
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

# --- SURVIVOR: BOOL_NEGATE_820_2 (MEDIUM) line 820 in ua() ---
# Source:  return $ua;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_820_2 line 820 in ua()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 820 in ua() to detect the mutant
    fail('BOOL_NEGATE_820_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_879_2 (MEDIUM) line 879 in reverse_geocode() ---
# Source:  if(my $rc = $self->_cache($latlng)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_879_2 line 879 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 879 in reverse_geocode() to detect the mutant
    fail('COND_INV_879_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_880_3 (MEDIUM) line 880 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_880_3 line 880 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 880 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_880_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_889_3 (MEDIUM) line 889 in reverse_geocode() ---
# Source:  if(ref($geocoder) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_889_3 line 889 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 889 in reverse_geocode() to detect the mutant
    fail('COND_INV_889_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_890_4 (MEDIUM) line 890 in reverse_geocode() ---
# Source:  if(exists($geocoder->{'limit'}) && defined(my $limit = $geocoder->{'limit'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_890_4 line 890 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 890 in reverse_geocode() to detect the mutant
    fail('COND_INV_890_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_892_15_< (HIGH) line 892 in reverse_geocode() ---
# Source:  if($limit <= 0) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip <= to <
#   Numeric boundary flip <= to >
#   Numeric boundary flip <= to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_892_15_< line 892 in reverse_geocode()';
    # Suggested boundary values to test: -1, 0, 1
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 892 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_892_15_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_902_3 (MEDIUM) line 902 in reverse_geocode() ---
# Source:  if(wantarray) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_902_3 line 902 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 902 in reverse_geocode() to detect the mutant
    fail('COND_INV_902_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_907_4 (MEDIUM) line 907 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_907_4 line 907 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 907 in reverse_geocode() to detect the mutant
    fail('COND_INV_907_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_920_66_> (HIGH) line 920 in reverse_geocode() ---
# Source:  print Data::Dumper->new([\@locs])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_920_66_> line 920 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 920 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_920_66_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_923_5 (MEDIUM) line 923 in reverse_geocode() ---
# Source:  if(my $name = $loc->{'display_name'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_923_5 line 923 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 923 in reverse_geocode() to detect the mutant
    fail('COND_INV_923_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_947_4 (MEDIUM) line 947 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_947_4 line 947 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 947 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_947_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_954_4 (MEDIUM) line 954 in reverse_geocode() ---
# Source:  if($@) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_954_4 line 954 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 954 in reverse_geocode() to detect the mutant
    fail('COND_INV_954_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_969_4 (MEDIUM) line 969 in reverse_geocode() ---
# Source:  if(!ref($rc)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_969_4 line 969 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 969 in reverse_geocode() to detect the mutant
    fail('COND_INV_969_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_978_5 (MEDIUM) line 978 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_978_5 line 978 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 978 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_978_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_981_63_> (HIGH) line 981 in reverse_geocode() ---
# Source:  print Data::Dumper->new([$rc])->Dump() if($self->{'debug'} >= 2);
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip >= to >
#   Numeric boundary flip >= to <
#   Numeric boundary flip >= to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_981_63_> line 981 in reverse_geocode()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 981 in reverse_geocode() to detect the mutant
    fail('NUM_BOUNDARY_981_63_>: replace with real assertion');
}

# --- SURVIVOR: COND_INV_983_4 (MEDIUM) line 983 in reverse_geocode() ---
# Source:  if(my $name = $rc->{'display_name'}) {
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

# --- SURVIVOR: BOOL_NEGATE_993_5 (MEDIUM) line 993 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_993_5 line 993 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 993 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_993_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_996_4 (MEDIUM) line 996 in reverse_geocode() ---
# Source:  if($rc->{'city'}) {
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

# --- SURVIVOR: BOOL_NEGATE_1007_5 (MEDIUM) line 1007 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
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

# --- SURVIVOR: COND_INV_1010_4 (MEDIUM) line 1010 in reverse_geocode() ---
# Source:  if($rc->{features}) {
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

# --- SURVIVOR: BOOL_NEGATE_1021_5 (MEDIUM) line 1021 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1021_5 line 1021 in reverse_geocode()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1021 in reverse_geocode() to detect the mutant
    fail('BOOL_NEGATE_1021_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1113_2 (MEDIUM) line 1113 in flush() ---
# Source:  return $self;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1113_2 line 1113 in flush()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1113 in flush() to detect the mutant
    fail('BOOL_NEGATE_1113_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1138_2 (MEDIUM) line 1138 in _build_ca_address() ---
# Source:  if(my $usa = $loc->{'usa'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1138_2 line 1138 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1138 in _build_ca_address() to detect the mutant
    fail('COND_INV_1138_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1157_2 (MEDIUM) line 1157 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1157_2 line 1157 in _build_ca_address()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1157 in _build_ca_address() to detect the mutant
    fail('BOOL_NEGATE_1157_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1212_6 (MEDIUM) line 1212 in _cache() ---
# Source:  if(blessed($item) && ref($item->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1212_6 line 1212 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1212 in _cache() to detect the mutant
    fail('COND_INV_1212_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1222_6 (MEDIUM) line 1222 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1222_6 line 1222 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1222 in _cache() to detect the mutant
    fail('COND_INV_1222_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1228_6 (MEDIUM) line 1228 in _cache() ---
# Source:  unless(defined($item->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1228_6 line 1228 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1228 in _cache() to detect the mutant
    fail('COND_INV_1228_6: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1243_5 (MEDIUM) line 1243 in _cache() ---
# Source:  unless($self->{'debug'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_1243_5 line 1243 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1243 in _cache() to detect the mutant
    fail('COND_INV_1243_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1249_5 (MEDIUM) line 1249 in _cache() ---
# Source:  if(defined($value->{geometry}{location}{lat})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1249_5 line 1249 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1249 in _cache() to detect the mutant
    fail('COND_INV_1249_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1265_5 (MEDIUM) line 1265 in _cache() ---
# Source:  if(ref($value) && ref($value->{'geocoder'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1265_5 line 1265 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1265 in _cache() to detect the mutant
    fail('COND_INV_1265_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1274_4 (MEDIUM) line 1274 in _cache() ---
# Source:  if(!defined($value)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1274_4 line 1274 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1274 in _cache() to detect the mutant
    fail('COND_INV_1274_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1283_3 (MEDIUM) line 1283 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1283_3 line 1283 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1283 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1283_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_1306_2 (MEDIUM) line 1306 in _cache() ---
# Source:  if(ref($rc) eq 'HASH') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_1306_2 line 1306 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1306 in _cache() to detect the mutant
    fail('COND_INV_1306_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_1313_2 (MEDIUM) line 1313 in _cache() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_1313_2 line 1313 in _cache()';
    # NOTE: new() called with no arguments as a starting point.
    # If Geo::Coder::List requires constructor arguments, add them here.
    my $obj = new_ok('Geo::Coder::List');
    # TODO: exercise line 1313 in _cache() to detect the mutant
    fail('BOOL_NEGATE_1313_2: replace with real assertion');
}

# --- LOW DIFFICULTY HINTS (comment stubs) ---

# --- LOW HINT: RETURN_UNDEF_377_4 line 377 in geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_377_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_401_3 line 401 in geocode() ---
# Source:  return @rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_401_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_410_4 line 410 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_410_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_762_2 line 762 in geocode() ---
# Source:  return wantarray ? () : undef;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_762_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_820_2 line 820 in ua() ---
# Source:  return $ua;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_820_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_880_3 line 880 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_880_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_947_4 line 947 in reverse_geocode() ---
# Source:  return @rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_947_4: add assertion here');

# --- LOW HINT: RETURN_UNDEF_978_5 line 978 in reverse_geocode() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_978_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_993_5 line 993 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_993_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1007_5 line 1007 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1007_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1021_5 line 1021 in reverse_geocode() ---
# Source:  return $self->_cache($latlng, $name);
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1021_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1113_2 line 1113 in flush() ---
# Source:  return $self;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1113_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1157_2 line 1157 in _build_ca_address() ---
# Source:  return $name;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1157_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1283_3 line 1283 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1283_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_1313_2 line 1313 in _cache() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If Geo::Coder::List requires constructor arguments, add them here.
# my $obj = new_ok('Geo::Coder::List');
# ok($obj->..., 'RETURN_UNDEF_1313_2: add assertion here');

done_testing();
