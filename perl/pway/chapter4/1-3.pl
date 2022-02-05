#!/usr/bin/perl

use strict;
use warnings;

print "angka:";
my $angka = <STDIN>;
my $number=1;

for (0..$angka-1){
	for((0..$angka-1)){
		print($number,' ');
		$number += 2;
	}
	print("\n");
}

