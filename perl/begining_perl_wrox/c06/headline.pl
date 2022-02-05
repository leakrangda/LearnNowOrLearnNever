#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

open LYNX,"lynx -source http://www.perl.com/ |" or die "cant't open lynx: $!";
$_="";
$_=<LYNX> until /standard\.def/;

my $head = <LYNX>;

$head =~ m|^<A HREF=[^>]+>(.*?)</a>|i;

print "today's www.perl.com headline : $1\n";

