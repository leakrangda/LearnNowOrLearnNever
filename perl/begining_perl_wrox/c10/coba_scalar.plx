#!/usr/bin/perl

use strict;
use warnings;

my $my_scalar="aku";

#ordinary scalar
print "ordinary scalar:", $my_scalar,"\n";

#reference scalar to other scalar

my $num=1;
my $ref=\$num;

print "reference to scalar:",$$ref,"\n";

#refernce scalar to anonimous list
my $ref_2=[1,2,3];

print "reference to anon list:";
for(0..2){
	print $ref_2->[$_],' ';
}
print "\n";
