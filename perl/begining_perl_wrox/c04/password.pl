#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $password="ilham";
print "enter the password:";
my $guess=<STDIN>;
chomp $guess;

if($password eq $guess){
	print "pass, friedn\n";
}
if($password ne $guess){
	die "go away, imposter!\n";
}

