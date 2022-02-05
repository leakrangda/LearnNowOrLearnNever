#!/bin/bash
# shift-past.sh

shift 3			# shifts 3 positions.
#	n=3; shift $n
#	has the same effect.

echo "$1"

exit 0

# =================================================#
# sh shift-past.sh 1 2 3 4 5
# 4

# however, as elenei fragkiadaki, points out,
# attemtinga 'shift' past the number of positional parameters
# ($#) returns an exit status of 1, and the positional
# parameters themselver do not hcange.
# this means possibly getting stuck in an enless loop.....
# for example:
#	until [ -z "$1" ]
#	do
#		echo -n "$1 "
#		shift 20	# if less than 20 pos params,
#	done			# then loop never ends
#
# when in doubt, add a snity check....
#	shift 20 || break
#		 ^^^^^^^^

