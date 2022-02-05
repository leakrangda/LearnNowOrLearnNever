#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my %contact=(
	ilham=>"081291971151",
	911=>"911",
	bca=>"88000",
	mandiri=>"14000"
);

/*ini baru namanya sintaks, wkwkwk, intepreter memang kocak*/
for (reverse sort keys %contact){
	print "$_ punya nomor:\t$contact{$_}\n";
}
print "\n";

