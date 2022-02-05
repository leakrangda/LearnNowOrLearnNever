#!/usr/bin/perl
#
use warnings;
use strict;

sub get_table(){
	my @list=shift;
	my @result;
	for (0 ..$#list){
		while $list[$_] =~ 
	}
sub get_fungsi(){
	my @list;
	my $count;
	print "jumlah fungsi:";
	$count = <STDIN>;
	for (0 .. $count-1){
		$list[$_]=<STDIN>;
	}
	return @list;
}

my @sementara = get_fungsi();
for (0 .. $#sementara){
	print $sementara[$_];
}
