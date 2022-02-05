#!/bin/bash
# showing the script using no do and done in loop

for((n=1; n<=10; n++))
# No do!
{
	echo -n "* $n *"
}
# No done!


# Outputs:
# *1 ** 2 ** 3 ** 4 ** 5 ** 6 ** 7 ** 8 ** 9 ** 10 *
# And, echo $? return 0, so Bash does not register an error.
echo;

# But, note that in a classic for-loop: 	for n in [list] ...
#+a terminal semicolon is required.

for n in 1 2 3
	{ echo -n "$n "; }
	#
echo
# Thank you, YongYe, for pointing this out.
