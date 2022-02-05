#!/usr/bin/perl

use warnings;
use strict;

$/="\n%\n";
open QUOTE, "quotes.dat" or die $!;
my @file=<QUOTE>;

my $random=rand(@file);
my $fortune=$file[$random];
chomp $fortune;

print $fortune, "\n";
