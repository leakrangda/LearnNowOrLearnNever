#!/bin/bash
# revposparams.sh: Reverse positional parameters.
# Script by Dan Jacobson, with stylistic revisions by document author.

set a\ b c d\ e;
#     ^	     ^		Spacces escaped
#	^ ^		Spaces not escaped
OIFS=$IFS; IFS=:;
#	       ^	Saving ol IFS and setting new one.

echo

until [ $# -eq 0 ]
do	#		Step throught poitional parameters.
	echo "### k0 = "$k""	# Before
	k=$1:$k; #	Append each pos param to loop variable.
#	    ^
	echo "### k = "$k""	# After
	echo
	shift;
done

set $k 	# Set new positional parameters.
echo -
echo $# # Count of positional parameters.
echo -
echo

for i 	# Omitting the "in list" sets the variable -- i --
	#+to positional parameters.
do
	echo $i	# Display new positional parameters.
done

IFS=$OIFS	# Restore IFS.

# Question:
# Is it necessary to set a new IFS, internal field separator,
#+in order for this script to work properly?
# What happens if you don't? Try it.
# And, why use the new IFS -- a colon -- in line 17,
#+to append to the loop variable?
# What is the purpose of this?

exit 0
