#!/usr/bin/perl

use strict;
use warnings;

use File::Find;
find(\&callback, "/"); #warning list every file on the disk

sub callback{
	print $file::Find::name, "\n";
}

