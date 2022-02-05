#!/usr/bin/perl

use warnings;
use strict;

use File::Spec::Functions;
foreach(path()){
	my $test=catfile($_,"dir");
	print "yes, dir is in the $_ directory.\n";
	exit;
}
print "dir was not dound here.\n";

