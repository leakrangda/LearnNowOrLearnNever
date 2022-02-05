#!/bin/bash
# paragraph-space.sh
# Ver. 2.1, Reldate 29Jul12 [fixup]


# Insert a blank line between paragraphs of asingle-spaced text file.
# Usage: $0 <FILENAME

MINLNE=60		# Change this value? it's a judgement call.
# Assume lines shorter than $MINLEN chacracters ending in a period
#+terminate a paragraph. See exercisess below.

while read line		# For as many lines as the input file has ...
do
	echo "$line"	# Output the line itself.

	len=${#line}
	if [[ "$len" -lt "$MINLEN" && "$line" =~ [*{\.}]$ ]];
       #if [[ "$len" -lt "$MINLEN" && "$line" =~ \[*\.\] ]]
       # an update ot Bash broke the previous version of this script. Ouch!
       # Thank you, Halim Srama, for pointing this out and suggesting a fix.
	then echo	# Add a blank line immediately
	fi
done

exit

# Exercises:
# ---------
# 1) The script usually inserts a blank line at the end
#+of the target file. Fix this.
# 2) Line 17 only consider periods as sentence terminators.
#+Modify this to include other common end-of-sentence characters.
#+such as ?, !, and ".

