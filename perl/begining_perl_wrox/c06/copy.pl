#!/usr/bin/perl

use warnings;
use strict;

my $source=shift @ARGV;
my $destination=shift @ARGV;

open IN, $source or die "can't read source file $source:$!\n";
open OUT, "> $destination" or die "can't write on file $destination:$!\n";

print "copying $source to $destination\n";
while(<IN>){
	print OUT $_;
}

