#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $limit;

print "insert limit:";
$limit=<STDIN>;
chomp $limit;
OUTER:for my $i(2..$limit){
	INNER:for my $j(2..$i-1){
		next OUTER if $i % $j == 0;
	}
	print "$i,";
}
print "\n";
