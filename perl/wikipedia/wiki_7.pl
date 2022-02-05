#!/usr/bin/perl

use strict;
use diagnostics;
use warnings;

my $N;
print "input number";
$N=<STDIN>;
print "2, ";
for(2..$N-1){
	my $temp=0;
	for my $i(2..$_-1){
		if(($_ % $i)==0){
			last;
		}
		$temp=$i;
	}
	if($_ ==($temp+1)){
		print "$_ ,";
	}
}
print "\n";
