#!/usr/bin/perl

use strict;
use warnings;

my $number;

print "put the number <hexa>:";
$number=<STDIN>;
print "convert to decimal:",hex($number),"\n";
print "put the number <octal>:";
$number=<STDIN>;
print "conver to decimal:",oct($number),"\n";

