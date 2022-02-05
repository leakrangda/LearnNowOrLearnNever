#!/bin/bash
# seeding-random.sh: Seeding the RANDOM variable.

MAXCOUNT=25		# How many numbers to generate
SEED=

random_number()
{
	local count=0
	local number

	while [ "$count" -lt "$MAXCOUNT" ]
	do
		number=$RANDOM
		echo -n "$number "
		let "count++"
	done
}

echo;echo

SEED=1
RANDOM=$SEED		# Setting RANDOM seeds
echo "Random seed = $SEED"
random_number		# . . . gives a different number series.

echo; echo

# RANDOM=$$ seeds RANDOM from process id of script.
# It is also possible to seed RANDOM from 'time' or 'date' commands.

# Getting fancy...

SEED=$(head -1 /dev/urandom | od -N 1 | awk '{print $2}' | sed s/^0*//)
# Pseudo-random output fetched
#+from /dev/urandom (system pesudo-random device-file),
#+then converted to line of printable (octal) numbers by "od",
#+thne "awk" retrieves just one number for SEED,
#+finally "sed" removes any leading zeros.
RANDOM=$SEED
echo "Random seed = $SEED"
random_number

echo; echo

exit
