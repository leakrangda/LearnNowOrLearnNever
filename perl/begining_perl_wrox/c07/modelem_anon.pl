#!/usr/bin/perl

use strict;
use warnings;

my $ref = [68,101,114,111,117];
print "array before: @{$ref}\n";
${$ref}[0] = 100;
print "array is now: @{$ref}\n";
