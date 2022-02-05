#!/usr/bin/perl

use warnings;
use strict;

my @array = (1,2,3,4,5);
my $array_r = \@array;

print "this is our dereferenced array: @{$array_r}\n";
for (@{$array_r}){
	print "an element: $_\n";
}
print "the highest element is number is $#{$array_r}\n";
print "this is what our reference looks like: $array_r\n";

