#!/usr/bin/sed

1 i\
.TS\
center box;\
cb s s\
cb cd cb\
l n c.\
Linux Distributions Report\
=\
Name	version	released\
-
s/\([-0]\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)$/\3-\1-\2/
$ a\
.TE
