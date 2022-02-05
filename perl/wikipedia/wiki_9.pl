#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $number=<STDIN>;
my ($a,$b);
$a=0;
$b=1;
while($b < $number){
	printf "%d,%d,",$b,$a+=$b;
	$b+=$a;
}
print "\n";
