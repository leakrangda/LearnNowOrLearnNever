#!/bin/bash

var1=abcd-1234-defg
echo "var1 = $var1"

t=${var1#*-*}
echo "var1 (with everything, up to and including first - stripped out) = $t"
# t=${var1#*-} works just the same,
#+since # matches the shortest strin,
#+and * matches everything preceding, including an empty string.
# (Thanks, Stephane Chazelas, for pointing this out.)

t=${var1##*-*}
echo "If var1 contains a \"-\", returns empty string...	var1 = $t"



t=${var1%*-*}
echo "var1 {with everything from the last - on stripped out) = $t"


echo

# ---------------------------------------------------------------------
path_name=/home/rangda/
# ---------------------------------------------------------------------
echo "path name = $path_name"
t=${path_name##/*/}
echo "path_name, stripped of prefixes = $t"
# Same effect as	t=`basename $path_name` in this particular case.
# t=${path_name%/}; t=${t##*/} is a more general solution,
#+but still fails, sometimes.
# If $path_name ends with a newline, then `basename $path_name` will not work,
# but the above expression will.
# (Thanks, S.C.)

t=${path_name%/*.*}
# same effect as t=`dirname $parth_name`
echo "path_name, stripped of suffixes = $t"
# This will fail in some cases, such as "../", "/foo////", # "foo/", "/".
# Removing suffixes, especially when the basenamae has no suffix,
#+but dirname does, also complicates matters.
# (Thanks S.C)

echo

t=${path_name:11}
echo "$path_name, with first 11 chars stripped off = $t"
t=${path_name:11:5}
echo "$path_name, with first 11 chars stripped off, length 5 = $t"

echo

t=${path_name/rangda/clown}
echo "$path_name with \"rangda\" replaced by \"clown\" = $t"
t=${path_name/rangda/}
echo "$path_name with \"rangda\" delete = $t"
t=${path_name//a/A}
echo "$path_name with all a's capitalized = $t"
t=${path_name//a/}
echo "$path_name with all a's deleted = $t"

exit 0
