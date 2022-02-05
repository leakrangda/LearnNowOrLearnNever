#!/usr/bin/perl

use warnings;
use strict;

sub log_warning{
	my $message = shift || "something's wrong";
	my $time = shift || localtime;
	print "[$time] $message\n";
}
log_warning("klingons on the starboard bow", "stardate 60030.2");
log_warning("/earth is 99% full, please delete more people");
log_warning();

