#!/usr/bin/perl

use strict;
use warnings;

my $x=10;
$_="alpha";
{
	my $x=20;
	local $_ ="beta";
	somesub();
}
somesub();

sub somesub{
	print "\$x is $x\n";
	print "\$_ is $_\n";
}
