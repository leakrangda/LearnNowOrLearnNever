#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

while (<STDIN>){
	chomp;
	die "!enod lla\n" unless $_;
	my $sdrawkcab=reverse $_;
	print "$sdrawkcab\n";
}
