#!/usr/bin/perl

use warnings;
use strict;

sub satu();
our $glob;

$glob=0;

#latihan 2

satu;

sub satu{
	print "sub [1] -glob=$glob\n";
	$glob++;
	return if $glob > 300;
	dua();
}
sub dua{
	print "sub [2] -glob=$glob\n";
	$glob++;
	return if $glob > 300;
	tiga();
}
sub tiga{
	print "sub [3] -glob=$glob\n";
	return if $glob > 300;
	satu();
}
	
	
