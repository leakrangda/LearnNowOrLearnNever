#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my %inventory;
print "enter individiual items, followed by a new line.\n";
print "enter a blank line to finish.\n";

while(1){
	my $item=<STDIN>;
	chomp $item;
	last unless $item;
	$inventory{lc $item}++;
}
open (SORT, "|perl sort3.pl") or *SORT = *STDOUT;
select *SORT;
while(my($item,$quantity)=each %inventory){
	if($quantity > 1){
		$item=~s/^(\w+)\b/$1s/ unless $item =~ /^\w+s\b/;
	}
	print "$item: $quantity\n";
}
