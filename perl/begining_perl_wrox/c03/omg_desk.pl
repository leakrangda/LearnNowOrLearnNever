#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $hand;
my @pileofpaper=("letter", "newspaper", "gas bill", "notepad");

print "here's what's on the desk: @pileofpaper\n";
$hand = pop @pileofpaper;
print "you have now a $hand in your hand.\n";
print "you put the $hand away, and pick up something else.\n";
$hand = pop @pileofpaper;
print "you picked up a $hand.\n";
print "left on the desk is : @pileofpaper\n";
print "you pick up the next thing, and throw it away.\n";
pop @pileofpaper;
print "you put the $hand back on the pile.\n";
push @pileofpaper, $hand;
print "you also put a leaflet and a bank statement on the pile.\n";
push @pileofpaper, "leaflet", "Bank statement";

print "left on the desk is:@pileofpaper\n";


