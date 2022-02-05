#!/usr/bin/perl
use warnings;
use strict;

sub option1;
sub read1;
sub list1;
sub write1;
sub delete1;
sub clear1;

our %hash;
$_="";
until(/^q/i){
	print "what would you like to do?('o' for option):";
	$_=<STDIN>;
	chomp $_;

	if($_ eq "o"){
		options1();}
	elsif($_ eq "r"){
		read1();}
	elsif($_ eq "l"){
		list1();}
	elsif($_ eq "w"){
		write1();}
	elsif($_ eq "d"){
		delete1();}
	elsif($_ eq "x"){
		clear1();}
	else{ print "sorry, not a recognize option.\n";}
}

sub options1{
		print<<EOF
		option available:
		o - view options
		r - read entry
		l - list all entries
		w - write entry
		d - delete entry
		x - delete all entries
EOF
}
sub read1{
	my $keyname=getkey();

	if(exists $hash{$keyname}){
		print "element '$keyname' has value $hash{keyname}";}
	else{
		print "sorry, this element does not exist.\n";}
}
sub list1{
	foreach(sort keys(%hash)){
		print "$_ =>$hash{$_}\n";
	}
}
sub write1{
	my $keyname = getkey();
	my $keyval = getval();
	
	if(exists $hash{$keyname}){
		print "sorry, this element already exist.\n";
	}else{
		$hash{$keyname}=$keyval;
	}
}
sub delete1{
	my $keyname=getkey();
	
	if(exists $hash{$keyname}){
		print "this will delete the entry $keyname.\n";
		delete $hash{$keyname};
	}
}
sub clear1{
	undef %hash;
}
sub getkey{
	my $temp;

	print "enter key name of element=";
	chomp($temp = <STDIN>);
	return $temp;
}
sub getval{
	my $temp;

	print "enter value of element=";
	chomp($temp = <STDIN>);
	return $temp;
}

