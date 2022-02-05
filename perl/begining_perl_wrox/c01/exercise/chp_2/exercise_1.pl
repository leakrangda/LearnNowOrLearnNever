#!/usr/bin/perl

use strict;
use warnings;

print "put the rate:";
my $rate=<STDIN>;
print "put first price:";
my $price_1=<STDIN>;
print "put second price:";
my $price_2=<STDIN>;
print "put third price:";
my $price_3=<STDIN>;

print "the rate ${rate}output is: first=",$price_1*$rate," second=",$price_2*$rate," third=",$price_3*$rate,"\n";

