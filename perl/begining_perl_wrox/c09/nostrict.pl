#!/usr/bin/perl

use warnings;
use strict;

our $first="this";
our $second= "first";
our $third;
{
	no strict('refs');
	$third=${$second};
}
print "$third\n";
