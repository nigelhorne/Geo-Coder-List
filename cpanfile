# Generated from Makefile.PL using makefilepl2cpanfile

requires 'perl', '5.10.1';

requires 'Carp';
requires 'HTML::Entities';
requires 'LWP::Protocol::https';
requires 'Object::Configure', '0.13';
requires 'Params::Get', '0.04';
requires 'Scalar::Util';
requires 'Time::HiRes';

on 'develop' => sub {
	requires 'Devel::Cover';
	requires 'Perl::Critic';
	requires 'Test::Pod';
	requires 'Test::Pod::Coverage';
};
