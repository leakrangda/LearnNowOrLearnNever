#!/usr/bin/perl

use strict;
use warnings;

print "angka:";
my $angka = <STDIN>;
my $number=1;

for my $outer (0..$angka-1){
	for((0..$angka - $outer - 2)){
		print(' ',' ');
	}
	for(0..$outer){
		print($number,' ');
		$number++;
	}
	print("\n");
}
