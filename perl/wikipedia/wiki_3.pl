#!/usr/bin/perl

use strict;
use warnings;

my $first=<STDIN>;
my $second=<STDIN>;
my $third=<STDIN>;

if($first > $second){
	if($first > $third){
		print "the biggest is ${first}";}
	else{
		print "the biggset is ${third}";}
}
elsif($second > $third){
	print "the biggest is ${second}";
}
else{
	print "the biggest is ${third}";
}

