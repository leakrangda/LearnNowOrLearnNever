#!/usr/bin/perl

use strict;
use warnings;

my $pattern = shift;
while(<>){
	if($_ =~ /$pattern/){
		print "the $pattern is match in file $ARGV :$_\n";
	}
}

