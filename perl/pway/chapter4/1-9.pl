#!/usr/bin/perl

use strict;
use warnings;

print "angka:";
my $angka = <STDIN>;

for my $outer (0..$angka-1){
	for((0..$angka - $outer - 1)){
		print($_ + $outer + 1,' ');
	}
	for(0..$outer - 1){
		print($_ + 1,' ')
	}
	print("\n");
}
