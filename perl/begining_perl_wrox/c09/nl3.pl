#!/usr/bin/perl -s

use warnings;
use strict;

my $lineno;
my $current="";

our($v,$h);

if(defined $v){
	print "$0 - line numberer, version 3\n";
	exit;
}
if(defined $h){
	print<<EOF;
$0 - number line in a file

usage : $0 [-h|-v] [filename filename....]

this utility prints out each line in a file to standard output,
with line numbers added.
EOF
	exit;
}
while(<>){
	if($current ne $ARGV){
		$current=$ARGV;
		print "\n\t\tfile: $ARGV\n\n";
		$lineno=1;
	}
	print $lineno++;
	print ":$_";
}
