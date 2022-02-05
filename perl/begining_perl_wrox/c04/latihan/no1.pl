#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my ($value, $from, $to, $rate, %rates,$flag);
%rates=(
	pounds		=>1,
	dollar		=>1.2,
	marks		=>3.0,
	"french francs"	=>10.0,
	yen		=>174.8,
	"swiss francs"	=>2.43,
	drachma		=>492.3,
	euro		=>1.5);
	$flag=1;
while($flag){
	print "enter your start currency: ";
	$from=<STDIN>;
	print "enter your targt currency: ";
	$to=<STDIN>;
	print "enter your amount: ";
	$value=<STDIN>;

	chomp($from,$to,$value);
	if(not exists $rates{$from}){
		print "i dont know about $from.\n";
		next
	}
	elsif(not exists $rates{$to}){
		print"i dont know about $to.\n";
		next;
	}
	$rate=$rates{$to} / $rates{$from};
	$flag=0;
}

print "$value $from is ", $value*$rate," $to,\n";

