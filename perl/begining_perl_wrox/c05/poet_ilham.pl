#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my $syllable="il";
while(<>){
	print if /$syllable$/;
}

