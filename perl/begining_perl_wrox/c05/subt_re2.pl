#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

$_ ="there are two major products that come out of Berkeley: LSD and UNIX";
#jeremy Anderson

s/(\w+)\s+(\w+)/$2 $1/;
#sekali
print $_,"?\n";
s/(\w+)\s+(\w+)/$2 $1/g;
#global
print $_,"?\n";

