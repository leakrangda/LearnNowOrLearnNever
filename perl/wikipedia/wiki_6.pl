#!/usr/bin/perl

use strict;
use diagnostics;
use warnings;

my ($numb,$sum);
$sum=0;
print "masukan angka:";
$numb=<STDIN>;
for(0..$numb-1){
	my $num;

	$num=<STDIN>;
	$sum+=$num;
}
print "the everage is : ",$sum/$numb,"\n";
