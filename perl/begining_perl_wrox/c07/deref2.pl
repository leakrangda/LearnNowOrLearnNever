#!/usr/bin/perl

use warnings;
use strict;

my @band = qw(corsby still nash young);
my $ref = \@band;
for (0..3){
	print "array		: ", $band[$_],"\n";
	print "reference	: ", ${$ref}[$_],"\n";
}


