#!/usr/bin/perl

use strict;
use warnings;

my $max=0;
my $counter=0;
print "masukan angka limit:";
my $number=<STDIN>;
while($counter < $number){
	print "masukan angka ke-$counter:";
	my $temp=<STDIN>;
	if($temp > $max){
		$max=$temp;
	}
	$counter++;
}
print "angka terbesarnya adalah ",$max;

