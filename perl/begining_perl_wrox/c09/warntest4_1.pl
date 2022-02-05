#!/usr/bin/perl

use warnings;

{
	no warnings "qw";
	my @a=qw(one, two, three, four);
}
my @b=qw(one, two , three, four);
