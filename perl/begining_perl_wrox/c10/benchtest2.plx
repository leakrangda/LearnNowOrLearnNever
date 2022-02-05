#!/usr/bin/perl

use warnings;
use strict;

use Benchmark;
my $howmany=100;

timethese($howmany, {
		line=>sub{
			my $file;
			open TEST, "benchtest2.plx" or die $!;
			while(<TEST>){$file.=$_}
			close TEST;
		},
		slurp=>sub{
			my $file;
			local undef $/;
			open TEST, "benchtest2.plx" or die $!;
			$file=<TEST>;
			close TEST;
		},
		join=>sub{
			my $file;
			open TEST, "benchtest2.plx" or die $!;
			$file=join "",<TEST>;
			close TEST;
		}
	});
