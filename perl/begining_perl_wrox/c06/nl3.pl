#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my $lineno;
my $current="";

while(<>){
	if($current ne $ARGV){
		$current=$ARGV;
		print "\n\t\tFile: $ARGV\t\t\n";
		$lineno=1;
	}
	print $lineno++;
	print ": $_";
}
