#!/usr/bin/perl

use strict;
use warnings;

sub gcd{
	my ($x,$y)=(shift,shift);
	if($y > $x){
		my $temp=$y;
		$y=$x;
		$x=$temp;
	}
	while($y){
		my $temp=$x % $y;
		$x=$y;
		$y=$temp;
	}
	return $x;
}
my $number1=<>;
my $number2=<>;
print gcd($number1,$number2),"\n";
