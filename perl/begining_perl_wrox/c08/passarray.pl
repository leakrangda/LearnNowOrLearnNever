#!/usr/bin/perl

use warnings;
use strict;

sub check_same(\@\@);

my @a=(1,2,3,4,5);
my @b=(1,2,3,5,6);
my @c=(1,2,3,4,5);

print "\@a is the same as \@b\n" if check_same(@a, @b);
print "\@a is the same as \@c\n" if check_same(@a, @c);

sub check_same(\@\@){
	my ($ref_one, $ref_two) = @_;
	return 0 unless @$ref_one==@$ref_two;
	for (0..$#$ref_one){
		return 0 unless $ref_one->[$_] eq $ref_two->[$_];
	}
	return 1;
}
