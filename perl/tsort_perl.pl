    use strict;
    use warnings;
     
    my $number=<>;
    my @array;
    for(0..$number-1){
	my $local=<>;
    	unshift(@array,$local);
    	}
    sort{$a <=> $b} @array;
    print $_ foreach(sort{$a <=> $b} @array);
     
