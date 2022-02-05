#!/bin/bash

# Rename all filenames in $PWD with "TXT" suffix to a "txt" suffix.
# For example, "file1.TXT" becomes "file1.txt" . . . .

SUFF=TXT
suff=txt

for i in $(ls *.$SUFF)
do
	mv -f $i $({i%.$SUFF}).$suff
	# Leave unchanged everythin *except* the shortest pattern match
	#+starting from the right-hand-side of the variable $i . . .
done	### This could be condensed in "one-liner" if desired.

# Thank you, Rory Winston.
