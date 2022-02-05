#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my @questions=qw(java python perl c);
my @punchlines=("none. Change it once, and it's the same everywhere.",
	"one. He just stand below the socket and the world revolves around him.",
	"a million. One to change it, the rest to try and do it in fewer lines.",
	"CHANGE!!");
print "please enter a number between 1 and 4:";
my $selection = <STDIN>;
$selection-=1;
print "how many $questions[$selection] ";
print "programmers does to take to change a lightbulb?\n\n";
sleep 2;
print $punchlines[$selection],"\n";
