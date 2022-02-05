#!/usr/bin/perl

use warnings;
use strict;

my ($hours, $minutes, $seconds) = secs2hms(3723);
print "3723 second is $hours hours $minutes minutes and $seconds seconds\n";
my $time=secs2hms(6868);
print "6868 seconds is $time\n";
sub secs2hms{
	my ($h,$m);
	my $seconds=shift;
	$h=int($seconds/(60*60));
	$seconds%=60*60;
	$m=int($seconds/60);
	$seconds%=60;
	if(wantarray){
		return($h,$m,$seconds);
	}
	return "$h hours, $m minutes and $seconds seconds";
}
