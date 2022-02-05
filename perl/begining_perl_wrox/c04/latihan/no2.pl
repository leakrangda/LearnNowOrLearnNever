#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my $angka=12;
while(1){
	my $temp;

	print "masukan angka:";
	$temp=<STDIN>;
	chomp $temp;
	last if $temp eq $angka;
	}
print "anda memasukan angka yang benar\n";

