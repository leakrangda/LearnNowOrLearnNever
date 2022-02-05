#!/usr/bin/perl

use warnings;
use strict;
use diagnostics;

$_ = "awake! awake fear, fire, foes! awake!fire, foes! awake!";
#tolkien, lord of the rings

s/foes/flee/g;
print $_,"\n";
