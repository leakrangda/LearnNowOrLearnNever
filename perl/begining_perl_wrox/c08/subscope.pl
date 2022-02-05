#!/usr/bin/perl

use strict;
use warnings;

first(1,2,3);

sub first{
	print "in first, arguments are @_\n";
	second(4,5,6);
	print "back in first, argumens are @_\n";
}
sub second{
	print "in second, arguments are @_\n";
}
