#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my ($value, $from, $to, $rate, %rates);
%rates=(
	pounds		=>1,
	dollar		=>1.2,
	marks		=>3.0,
	"french francs"	=>10.0,
	yen		=>174.8,
	"swiss francs"	=>2.43,
	drachma		=>492.3,
	euro		=>1.5);
print "enter your start currency: ";
$from=<STDIN>;
print "enter your targt currency: ";
$to=<STDIN>;
print "enter your amount: ";
$value=<STDIN>;

chomp($from,$to,$value);
if(not exists $rates{$from}){
	die "i dont know about $from.\n";
}
if(not exists $rates{$to}){
	die "i dont know about $to.\n";
}
$rate=$rates{$to} / $rates{$from};

print "$value $from is ", $value*$rate," $to,\n";

