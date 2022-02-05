#!/usr/bin/perl

use strict;
use diagnostics;
use warnings;

my $number=<STDIN>;
my $i;
for(1..$number-1){
	if($number % $_ == 0 and $_ != 1){
		last;
	}
	$i=$_;
}
print $i,"\n";
if($i == $number - 1){
	print "its prime\n";
}else{
	print "its not prime\n";
}
