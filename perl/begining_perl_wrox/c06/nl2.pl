#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my $lineno=1;

while(<>){
	print $lineno++;
	print ": $_";
}
