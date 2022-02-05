#!/usr/bin/perl

use strict;
use warnings;

my @array=(68,101,114,111,117);
my $ref= \@array;
print "array before : @{$ref}\n";
${$ref}[0]=100;
print "array is now : @array\n";
