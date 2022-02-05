#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

open FILE, "nlexample.txt" or die $!;
my $lineno=1;

while(<FILE>){
	print $lineno++;
	print ": $_";
}
