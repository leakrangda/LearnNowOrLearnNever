#!/usr/bin/perl

use strict;
use warnings;

print "angka:";
my $angka = <STDIN>;

for (0..$angka-1){
	for((0..$angka - $_ - 1)){
		print($_ + 1,' ');
	}
	print("\n");
}
