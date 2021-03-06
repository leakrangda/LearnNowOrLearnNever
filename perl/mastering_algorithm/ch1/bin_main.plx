#!/usr/bin/perl

$word = shift;
chomp(@array=<>);

($word, @array)= map lc, ($word, @array);
$index=binary_search(\array, $word);

if(defined $index){
	print "$word occurs at position $index.\n";
}else{
	print "$word doesnt occur.\n";
}

sub binary_search{
	my ($array, $word)=@_;
	my $low=0;
	my $high=@$array-1;

	while($low <= $high){
		my $try = int(($low+$high)/2);
		$low = $try+1, next if $array->[$try] lt $word;
		$high= $try-1, next if $array->[$try] gt $word;
		return $try;
	}
	return;
}
