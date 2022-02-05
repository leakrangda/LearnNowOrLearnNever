#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

$_ = q("i wonder what the Entish is for 'yes' and 'no'," the thought.);
#tolkien, lord of the rings

print "enter some text to find:";
my $pattern=<STDIN>;
chomp($pattern);
if(/$pattern/){
	print "the text matches the pattern '$pattern'.\n";
}else{
	print "'$pattern' was not found.\n";
}
