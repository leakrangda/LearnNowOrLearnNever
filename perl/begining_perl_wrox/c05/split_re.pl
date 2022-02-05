#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my $passwd = "kake:x:1992:19923::/home/kake:/bin/bash";
my @field = split /:/, $passwd;

print "login name: $field[0]\n";
print "user ID: $field[2]\n";
print "home dir: $field[5]\n";

my $passwd2= join "#", @field;
print "original passwd:$passwd\n";
print "new passwd:$passwd2\n";
