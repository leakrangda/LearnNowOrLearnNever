#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $total=0;
$total += $_ for @ARGV;
print "the total is $total\n";


