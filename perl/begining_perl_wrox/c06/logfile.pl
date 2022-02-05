#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

my $logging = "screen";

if($logging eq "file"){
	open LOG, "> output.log" or die $!;
	select LOG;
}
print "program started: ", scalar localtime,"\n";
sleep 30;
print "program finished: ", scalar localtime,"\n";

select STDOUT;

