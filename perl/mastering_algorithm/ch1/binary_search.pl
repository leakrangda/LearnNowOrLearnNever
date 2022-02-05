#!/usr/bin/perl

use strict;
use warnings;

#binary search algorithm
sub binary_search{
	my ($array, $word)=@_;
	my ($low, $high) = (0, @$array-1);

	while($low <=high){
		my $try= int(($low+$high) / );
		$low  = $try + 1, next if $array->[try] lt $word;
		$high = $try - 1, next if $array->[try] gt $word;

		return $try;
	}
	return;
}
