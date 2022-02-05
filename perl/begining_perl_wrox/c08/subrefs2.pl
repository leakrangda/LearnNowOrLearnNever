#!/usr/bin/perl

use strict;
use warnings;
sub increment(\$);

my $a = 5;
increment($a);
print $a;

sub increment{
	my $reference = shift;
	$$reference++;
}
