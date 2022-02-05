#!/usr/bin/perl

use strict;
use warnings;

sub isPrime{
	my $x=shift;
	my $y=0;
	if($x == 2){
		return 1;
	}else{
		for(2..$x-1){
			if($x % $_==0){
				last;
			}
			$y=$_;
		}
	}
	if($x==($y+1)){
		return 1;
	}else{
		return 0;
	}
}
##main routine###
my $angka=<>;
my $temp=$angka;
chomp ($temp,$angka);
for my $i(1..$temp){
	if(isPrime($i)){
		if($temp % $i==0){
			print $i," ";
		}
	}
}
print "\n";
