#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my $input = shift;
my $output= shift;
open IN, $input or die "could'nt open file $input: $!\n";
open OUT, ">$output" or die "coutldn't open file $input: $!\n";

my @file=<IN>;
@file = sort @file;

print OUT @file;
