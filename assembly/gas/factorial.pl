#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;

sub factorial{
	my $hitung = shift;
	if($hitung != 0){
		return $hitung * factorial($hitung - 1);
	}else{
		return 1;
	}
}
my $local = factorial(4);
print ("hasilnya adalah= ",$local,"\n");
