#!/usr/bin/perl

use warnings;
use strict;

my @chessboard;
my @back=qw(R N B Q K N B R);
for (0..7){
	$chessboard[0]->[$_]="W". $back[$_]; #white back row
	$chessboard[1]->[$_]="WP";	#white pawns
	$chessboard[6]->[$_]="BP";	#black Pawns
	$chessboard[7]->[$_]="B". $back[$_]; #black back row
}
while(1){
 #print board
	for my $i(reverse(0..7)){ #row
		for my $j(0..7){ #collumn
			if(defined $chessboard[$i]->[$j]){
				print $chessboard[$i]->[$j];
			}elsif(($i % 2)==($j % 2)){
				print "..";
			}else{
				print "  ";
			}
			print " ";	#end of cell
		}
		print "\n";	#end of row
	}
	print "\nstarting square [x,y]: ";
	my $move=<>;
	last unless($move =~ /^\s*([1-8]),([1-8])/);
	my $startx= $1-1; my $starty=$2-1;
	unless(defined $chessboard[$starty]->[$startx]){
		print "there's nothing on the square!\n";
		next;
	}
	print "\nending square[x,y]: ";
	$move=<>;
	last unless($move =~/([1-8]),([1-8])/);
	my $endx=$1-1;my $endy=$2-1;
	#put starting square on ending square;
	$chessboard[$endy]->[$endx]=$chessboard[$starty]->[$startx];
	#remove from old square
	undef $chessboard[$starty]->[$startx];
}

