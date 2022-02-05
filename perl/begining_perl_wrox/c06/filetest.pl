#!/usr/bin/perl

use strict;
use warnings;

my $target;
while(1){
	print "what file should i write on?";

	$target = <STDIN>;
	chomp $target;
	if(-d $target){
		print "no, $target is a directory.\n";
		next;
	}
	if(-e $target){
		print "file already exists. What should i do?\n";
		print "(enter 'r' to write to a different name, ";
		print "'0' to overwrite\n";
		print "'b' to back up to $target. old)\n";
		my $choice = <STDIN>;
		chomp $choice;
		if($choice eq "r"){
			next;
		}elseif($choice eq "o"){
			unless(-o $target){
				print "can't overwrite $target, it's not yours.\n");
				next;
			}
			unless(-w $target){
				print "can't overwrite $target\n";
				next;
			}
		}elseif($choice eq "b"){
			if(rename($target, $target.".old")){
				print "ok, moved $target to $target.old\n";
			}else{
				print "couldn't rename file: $!\n";
				next;
			}
		}else{
			print "i didnt understand that answer.\n";
			next;
		}
	}
	last if open OUTPUT, "> $target";
	print "i couldn write it on $target: $!\n";
}
print "congratulation.\n"
print "wrote file $target.\n";
