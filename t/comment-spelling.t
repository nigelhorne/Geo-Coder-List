#!perl

use 5.006;
use strict;
use warnings;
use Test::Most;

if($ENV{AUTHOR_TESTING} ) {
	eval 'use Test::Spelling::Comment 0.002';
	if($@) {
		plan(skip_all => 'Test::Spelling::Comment required for testing comment spelling');
	} else {
		Test::Spelling::Comment->new()->add_stopwords(<DATA>)->all_files_ok();
	}
} else {
	plan(skip_all => 'Author tests not required for installation');
}

__DATA__
ArcGIS
ARGV
Bing
Broadstairs
DataScienceToolkit
ENV
env
Fairfield
freegeocoder
GeoCodeFarm
GeocodeFarm
geocoder
GeoNames
GoogleMaps
Mapbox
OpenCage
OSM
RandMcNalley
TODO
usr
addressMatches
geocoders
io
lon
ovi
xyz
