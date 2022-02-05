#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my @unsorted=(1,2,11,24,3,26,6,10,40);

my @string=sort{$a cmp $b} @unsorted;
print "string sort: @string\n";

my @number=sort{$a <=> $b} @unsorted;
print "number sort: @number\n";

