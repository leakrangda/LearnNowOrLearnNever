#!/usr/bin/perl

use warnings;
use strict;

if(1){
	print "hello";

my $file=shift;
if(-e $file){
	print "file exists.\n";
}
