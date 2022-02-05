#!/bin/bash
# showing using calling function in while loop.

t=0

condition ()
{
	((t++))

	if [ $t -lt 5 ]
	then
		return 0	# true
	else
		return 1	# false
	fi
}

while condition
#     ^^^^^^^^^
#     Function call -- four loop iterations.
do
	echo "Still goind: t = $t"
done

# Still going: t = 1
# Still goind: t = 2

