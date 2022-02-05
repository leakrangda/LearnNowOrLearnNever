#!/usr/bin/perl
#scalar reference to anonymous array with other anonymous array

use strict;
use warnings;

my $array;
for my $i(1..6){
	for my $j(1..6){
		$array->[$i]->[$j]=$i * $j;
		#bisa ditulis sebagai ($array->[$i][$j])
	}
}
for my $i(1..6){
	for my $j(1..6){
		print ' 'x (4 - length($array->[$i][$j])), $array->[$i][$j];
	}
	print "\n";
}
