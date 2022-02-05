#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

open FILE, "gettysburg.txt" or die $!;
my @last5;

while(<FILE>){
	push @last5, $_;
	shift @last5 if @last5 > 5;
}
print "last five lines: \n", @last5;

