#!/usr/bin/perl

use warnings;
use strict;

my @band = qw(Crosby Stills Nash Young);
my $ref = \@band;

print "band member before : @band\n";
pop @{$ref};
print "band members after: @band\n";

