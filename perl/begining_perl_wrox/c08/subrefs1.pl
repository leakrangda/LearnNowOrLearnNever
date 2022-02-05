#!/usr/bin/perl

use strict;
use warnings;

my $a = 5;
increment(\$a);
print $a;

sub increment{
	my $reference = shift;
	$$reference++;
}
