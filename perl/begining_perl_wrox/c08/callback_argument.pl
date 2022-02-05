#!/usr/bin/perl

use strict;
use warnings;

use File::Find;
find(\&callback, shift); #warning list every file on the disk

sub callback{
	print $File::Find::name, "\n";
}

