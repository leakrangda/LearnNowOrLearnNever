#!/usr/bin/perl

use strict;
use warnings;

print "what's the weather outside?:";
my $weather=<STDIN>;
print "how hot is it in degrees?:";
my $temperature=<STDIN>;
print "and how many email left to reply to?:";
my $work=<STDIN>;

chomp ($weather,$temperature,$work);

if($weather eq "snowing"){
	print "ok, let's go!";
}elsif($weather eq "raining"){
	print "no way, sorry, i'am stayin in.\n";
}elsif($temperature < 18){
	print "too cold for me!\n";
}elsif($work > 30){
	print "sorry- just to busy.\n";
}else{
	print "well, why not\n";
}
