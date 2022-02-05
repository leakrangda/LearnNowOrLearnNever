#!/usr/bin/perl

use strict;
use warnings;

total(111,107,105,114,69);
total(1...100);
sub total{
	my $total=0;
	$total+=$_ for @_;
	$total;
}
