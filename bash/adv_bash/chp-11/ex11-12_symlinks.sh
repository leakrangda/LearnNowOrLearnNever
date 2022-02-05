#!/bin/bash
# symlinks.sh: List symbolic links in a directory.

OUTFILE=symlinks.list
# Defaults to current working directory,
#+if not otherwise specified.


echo "symbolic links in directory \"$directory\"" > "$OUTFILE"
echo "-----------------------------------------" >> "$OUTFILE"

for file in "$( find $directory -type 1)"	# -type 1 = symbolic links
do
	echo "$file"
done | sort >> "$OUTFILE"	# stdout of loop
#	    ^^^^^^^^^^^^^	# redirected to save file.

# echo "Output file = $OUTFILE"

exit $?
