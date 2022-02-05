#!/usr/bin/perl

use strict;
use warnings;

my @array=();

@array=qw(aku suka kamu dari sejak pertama bertemu);
print $_," " foreach(@array);
print "\n";

#tambah dari offset 1

splice (@array,1,0,"tidak");
print $_," " foreach(@array);
print "\n";

#ganti dari offset 1
splice (@array,1,3,qw(benci dia));
print $_," " foreach(@array);
print "\n";
#ganti seluruh array
splice (@array);
print $_," " foreach(@array);
print "\n";
