#!/usr/bin/perl

use strict;
use warnings;

my $number;
print "put decimal number less then 256:";
$number=<STDIN>;
print $number & 1 <<7,$number & 1<<6,$number & 1<<5,$number & 1<<4,$number & 1<<3,$number & 1<<2, $number & 1<<1,$number & 1,"\n";

