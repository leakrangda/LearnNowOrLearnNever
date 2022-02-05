#!/usr/bin/perl

use warnings;

$main::name="your name here";
$fred::name="fred flintstone";
$barney::name="barney rubble";

print "\$name in package min is $name\n";
pacakge fred;
print "\$name in package fred is $name\n";
package barney;
print "\$name in package barney is $name\n";
package main;

