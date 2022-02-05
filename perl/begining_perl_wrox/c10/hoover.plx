#!/usr/bin/perl

use strict;
use warnings;

use File::Find;
find(\&cleanup, "/");
sub cleanup{
	if(-A > 180){
		print "deleting old file $_\n"
		unlink $_ or print "oops, could'nt delete $_: $!\n";
		return;
	}
	open (FH, $_) ord die "couldn't open $_ : $!\n";
	for(1..5){
		my $line=<FH>;
		if($line =~ /perl|simon|important/i){
			return;
		}
	}
	print "deleting unimportan file $_\n";
	unlink $_ or print "oops, couldn't delete $_: $!\n";
}
