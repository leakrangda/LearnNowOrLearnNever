#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

my %rtable_5=(
	3=>0.997,
	4=>0.950,
	5=>0.878,
	6=>0.811,
	7=>0.754,
	8=>0.707,
	9=>0.666,
	10=>0.632);
my ($jumlah,$r,%sks,$xt,$xy,$xx,$yy,$yt,%ipk,$alpha,$db,$rt);

print "masukan jumlah data:";
$jumlah=<STDIN>;

for(0..$jumlah-1){
	print "masukan data x:";
	my $x;
	my $y;
	$x=<STDIN>;
	print "masukan data y:";
	$y=<STDIN>;
	chomp ($x,$y);
	$sks{$_}=$x;
	$ipk{$_}=$y;
}
foreach(keys %sks){
	$xt+=$sks{$_};
	$yt+=$ipk{$_};
	$xy+=$sks{$_}*$ipk{$_};
	$xx+=$sks{$_}**2;
	$yy+=$ipk{$_}**2;
	
}
$r=($jumlah * $xy - $xt * $yt)/sqrt(($jumlah *$xx -($xt**2))*($jumlah*$yy - $yt**2));
$alpha="5%";
$db=$jumlah-2;
$rt=$rtable_5{$db} if $db >= 3;

print "datanya adalah:\n";
print "1.r=$r\n";
print "2.alpha=$alpha\n";
print "3.db=$db\n";
print "4.r table=$rt\n";
if($r <= $rt){
	print "Ho ditolaki\n";
}else{
	print "H0 diterima\n";
}
