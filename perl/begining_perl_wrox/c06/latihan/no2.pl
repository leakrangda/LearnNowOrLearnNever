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
		print "'o' to overwrite\n";
		print "'b' to back up to $target. old)\n";
		my $choice = <STDIN>;
		chomp $choice;
		if($choice eq "r"){
			next;
		}elsif($choice eq "o"){
			unless(-o $target){
				print "can't overwrite $target, it's not yours.\n";
				next;
			}
			unless(-w $target){
				print "can't overwrite $target\n";
				next;
			}
		}elsif($choice eq "b"){
			if(-e $target.".old"){
				print "$target.old, is already there. input 'o' overwrite, 'c':";
				my $option=<STDIN>;
				chomp $option;
				if($option eq "o"){
					open BK, ">$target.old" or die;
					select(BK);
					last;
				}elsif($option eq "c"){
					print "skip\n" and next;
				}
			}		
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
	last if open OUTPUT, "> $target" and select(OUTPUT);
	print "i couldn't write it on $target: $!\n";
}
	print "congratulation.\n";
	print "wrote file $target.\n";
