#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

print "angkanya tolong:";
my $number=<STDIN>;
chomp($number);
my $result=1;
my $counter=1;
while($counter <= $number){
	$result=$result * ($counter++);
	}
print "the P! of:",$number," is ",$result,"\n";
