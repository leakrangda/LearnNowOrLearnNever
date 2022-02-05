#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my %punchlines=(
	java=>"none. Change it once, and it's the same everywhere.",
	python=>"one. He just stand below the socket and the world revolves around him.",
	perl=>"a million. One to change it, the rest to try and do it in fewer lines.",
	c=>"CHANGE!!",
	cplus=>"CHANGE!!!, but oh wait there is lightbulb, so CHANGE!!!");

for(keys %punchlines){
	print "how many $_ ";
	print "programmers does to take to change a lightbulb?\n\n";
	sleep 2;
	print $punchlines{$_},"\n";
	sleep 2;
}
