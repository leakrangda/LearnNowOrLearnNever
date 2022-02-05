#!/bin/bash

# shift.sh: using 'shift' to step throught all the positional parameters.

# name this script something like shft.sh,
# and invoke it with some parameters.
# for example:
#	sh shft.sh a b c def 83 brandoor

until [ -z "$1" ]	# until all parameter used up ...
do
	echo -n "$1 "
	shift
done
echo 			# extra linefeed.

# but, what happens to the "used-up" parameteres?
echo "$2"
# nothing echoes!
# when $2 shifts into $1 (and there is no $3 to shift into $2)
# then $2 remains empty.
# so, it is not a parameter *copy*, but a *move*.

exit

# see also the echo-params.sh script for a "shiftless"
# alternatives method of stepping through the positional params.

