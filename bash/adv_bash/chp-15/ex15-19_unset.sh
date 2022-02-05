#!/bin/bash
# unset.sh: Unsetting a variable.

variable=hello				# Initialized.
echo "variable = $variable"
unset variable				# Unset.
					# int his particular context,
					#+smae effect as: variable=
echo "(unset) variable = $variable"	# $variable is null.

if [ -z "$variable" ]			# Try a string-lengt test.
then
	echo "\$variable has zero length."
fi
exit 0
