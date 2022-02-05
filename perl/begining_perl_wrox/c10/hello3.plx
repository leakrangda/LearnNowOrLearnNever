#!/usr/bin/perl

use warnings;
use strict;

use Getopt::Std;

my %options;
getopts("vhl:",\%options);

if($options{v}){
	print<<EOF;
	$0: typical Hello world program

	Syntaz: $0 [-h|-v|-l <language>]

		-h : this help message
		-v : print version on standard output and exit
		-l : turn on international languange support.

EOF
	exit;
}
elsif($options{l}){
	if($options{l} eq "french"){
		print "bonjour, tout le monde.\n";
	}else{
		die "$0: unsupported language\n";
	}
}else{
	print "hello, world.\n";
}
