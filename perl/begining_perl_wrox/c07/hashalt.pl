#!/usr/bin/perl

use strict;
use warnings;

my %hash = (
	1 =>"january", 2=>"february", 3=>"march", 4=>"april", 
	5=>"may", 6=>"june", 7=>"july", 8=>"august", 
	9=>"september", 10=>"october", 11=>"november", 12=>"desember"
);
my $href = \%hash;
for(keys %{$hrefi}){
	print "key: ",$_,"\t";
	print "hash: ",$hash{$_},"\t";
	print "ref: ",${$href}{$_},"\n";
}
