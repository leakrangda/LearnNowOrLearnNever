#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $place="oregon";
my %where=(
	gary => "dallas",
	lucy => "exeter",
	ian => "reading",
	samantha => "oregon");
my %who=reverse %where;

print "gary lives in ", $where{gary},"\n";
print "ian lives in $where{ian}\n";
print "$who{exeter} lives in exeter\n";
print "$who{$place} lives in $place\n";
