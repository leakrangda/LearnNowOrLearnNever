#! /usr/bin/perl

use strict;
use warnings;
use File::Find;

find(\&callback, "/");

sub callback{
	unlink $_ if /\.bak$/;
}
