#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my @questions=qw(java python perl c);
my @punchlines=("none. Change it once, and it's the same everywhere.",
	"one. He just stand below the socket and the world revolves around him.",
	"a million. One to change it, the rest to try and do it in fewer lines.",
	"CHANGE!!");

for(0..$#questions){
	print "how many $questions[$_] ";
	print "programmers does to take to change a lightbulb?\n\n";
	sleep 2;
	print $punchlines[$_],"\n";
	sleep 1;
}
