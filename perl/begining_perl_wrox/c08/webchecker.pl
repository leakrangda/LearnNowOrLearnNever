#!/usr/bin/perl

use warnings;
use strict;

my %seen;

print "web checker, version 1.\n";
die "usage: $0 <starting pooint> <site base>\n" unless @ARGV==2;

my ($start,$base)=@ARGV;
$base .="/" unless $base=~m|/$|;

die "$start appears not to be in $base\n" unless in_our_site($start);
traverse($start);

sub traverse{
	my $url=shift;
	$url =~ s|/$|/index.html|;
	return if $seen{$url}++;
	my $page=get{$url};
	if($page){
		print "link OK: $url\n";
	}else{
		print "link dead: $url\n";
	}
	return unless in_our_site($url);
	my @links = extract_links($page, $url);
	return unless @links;
		
	for my $link(@links){
		traverse($link) #recurse
	}
}
sub in_our_site{
	my $url=shift;
	return index($url, $base)==0;
}
sub get{
	my $what=shift;
	sleep 5; #be friendly, to whom? haha
	return `lynx -source $what`;
}
sub extract_link{
	my ($page, $url)=@_;
	my $dir=$url;
	my @links;
	$dir =~ s|(.*)/.*?$|$1|;
	for(@links=($page=~/<A HREF=["']?([^\s"'>]+)["']?/gi)){
		$_=$base.$_ if s|^/||;
		$_=$dir."/".$_ if !/^(ht|f)tp:/;
	}
	return @links;
}
