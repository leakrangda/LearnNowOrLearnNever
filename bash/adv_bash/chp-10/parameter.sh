#!/bin/bash
# parameter.sh
# showing the usage and type all parameter in bash

# ${parameter}
# the same as $parameter, i.e value of the variable of parameter.
#+in certain context, only the less ambiguous ${parameter} form works.

# example . . .
your_id=${USER}-on-${HOSTNAME}
echo "$your_id"
echo "Old \$PATH = $PATH"
PATH=${PATH}:/opt/bin	# Add /opt/bin to $PATH for duration of script.
echo "New \$PATH = $PATH"

echo

# ${parameter-default}, ${parameter:-default}
# if parameter not set, use default.
# example . . .
var1=1
var2=2
#var3 is unset.

echo ${var1-$var2}	# 1
echo ${var3-$var2}	# 2
#	    ^		  Note the $ prefix.

echo ${username-`whoami`}
# Echoes the result of `whoami, if variable $username is still unset.

