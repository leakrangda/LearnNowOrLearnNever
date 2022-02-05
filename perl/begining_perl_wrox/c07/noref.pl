#!/usr/bin/perl

use strict;
use warnings;

my $ref = [1,2,3];
print "before: $ref\n";
print "@{$ref}\n";
$ref++;
print "after: $ref\n";
print "@{$ref}\n";
