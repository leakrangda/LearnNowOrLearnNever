#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my %where=(
	gary =>"dalas",
	lucy =>"exeter",
	ian => "reading",
	samantha =>"oregon");
for (keys %where){
	print "$_ lives in $where{$_}\n";
}
