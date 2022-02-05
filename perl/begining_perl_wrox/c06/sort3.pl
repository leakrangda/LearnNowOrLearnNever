#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my $numeric=0;
my $input = shift;

if(defined $input and $input eq "-n"){
	$numeric=1;
	$input=shift;
}
my $output = shift;

if(defined $input){
	open IN, $input or die "could'nt open file $input: $!\n";
}else{
	*IN = *STDIN;
}
if(defined $output){
	open OUT, ">$output" or die "coutldn't open file $input: $!\n";
}else{
	*OUT = *STDOUT;
}
my @file=<IN>;
if($numeric){
	@file = sort{$a <=> $b} @file;
}else{
	@file = sort @file;
}
print OUT @file;
