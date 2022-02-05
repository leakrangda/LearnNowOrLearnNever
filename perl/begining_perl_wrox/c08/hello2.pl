#!/usr/bin/perl

use warnings;
use strict;

sub version{
	print "Beginning perl's \"hello, world.\" version 2.0\n";
}

my $option = shift;
version if $option eq "-v" or $option eq "--version";
print "hello, world.\n";
