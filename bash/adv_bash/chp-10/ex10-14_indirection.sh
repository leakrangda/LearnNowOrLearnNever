#!/bin/bash
# This is variation on indirect reference, but with a * or @.
# Bash, version 2.04, adds this feature.

xyz23=whatever
xyz24=

a=${!xyz*}	# Expands to *names* of declared variables
# ^ ^   ^	#+beginning with "xyz".
echo "a = $a"	# a = xyz23 xyz24
a=${!xyz@}	# Same as above
		# a = xyz23 xyz24

echo "----"

abc23=something_else
b=${!abc*}	# b = abc23
echo "b = $b"	# b = abc23
c=${!b}		# Now, the more familiar type of indirect reference.
echo $c		# somethin_else

exit 0
