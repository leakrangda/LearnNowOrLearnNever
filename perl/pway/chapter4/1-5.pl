#!/usr/bin/perl

use strict;
use warnings;

print "angka:";
my $angka = <STDIN>;
my $number=0;

for (0..$angka-1){
	for((0..$_)){
		$number++;
		print($number,' ');
	}
	print("\n");
}
