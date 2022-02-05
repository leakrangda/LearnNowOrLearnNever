#!/usr/bin/perl

use strict;
use warnings;

print "angka:";
my $angka = <STDIN>;
my $number=$angka**2;

for my $i (0..$angka-1){
	for(reverse(0..$angka-1)){
		print($number - $_,' ');
	}
	$number -= $angka;
	print("\n");
}

