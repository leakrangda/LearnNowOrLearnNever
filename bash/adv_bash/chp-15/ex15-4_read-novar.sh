#!/bin/bash
# read-novar.sh

echo


# --------------------------- #
echo -n "Enter a value: "
read var
echo "\"var\" = "$var""
# Everything as expected here.
# --------------------------- #

echo

# --------------------------------------------------------------------- #
echo -n "Enter another value "
read		# No variable supplied for 'read', therefore...
		#+Input to 'read' assigned to default variable, $REPLY
var="$REPLY"
echo "\"var\" = "$var""
# This is equivalent to the first code block
# --------------------------------------------------------------------- #

echo
echo "====================="
echo

# This example is similiar to the "replay.sh" script.
# However, this one shows that $REPLY is available
#+even after a 'read' to a variable in conventional way.

# ===================================================================== #

# In some instances, you might to discord the first value read.
# In such cases, simply ignore the $REPLY variable.
{ # Code block
	read		# Line 1, to be discarded.
	read line2	# line 2, saved line variable.
} < $0
echo "Line 2 of this script is: "
echo "$line2"		# 	# read-novar.sh
echo			#	#!/bin/bash line discarded.

# See also the soundcard-on.sh script.

exit 0
