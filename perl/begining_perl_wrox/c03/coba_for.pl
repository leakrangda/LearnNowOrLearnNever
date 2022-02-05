#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my @array=(10,20,30,40,50);
print "before @array\n";
for(@array){$_ *=2;}
print "after @array\n";
