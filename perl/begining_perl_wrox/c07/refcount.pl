#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $ref;
{
	my @array=(1,2,3);
	$ref=\@array;
	my $ref2=\@array;
	$ref2="hello!";
}
undef $ref;
