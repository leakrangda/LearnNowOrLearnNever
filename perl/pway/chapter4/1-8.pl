#!/usr/bin/perl

use strict;
use warnings;

print "angka:";
my $angka = <STDIN>;

for my $outer (0..$angka-1){
	for((0..$angka - 1)){
		print($_ + $outer + 1,' ');
	}
	print("\n");
}
