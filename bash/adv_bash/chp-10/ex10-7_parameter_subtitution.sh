#!/bin/bash

# Check some of the system's environmental variables.
# This is good preventative maintenance.
# if, for example, $USER, the name of the person at the console, is not set,
#+ the macchine will not recognize you.
: ${HOSTNAME?} ${USER?} ${HOME?} ${MAIL?}
echo
echo "Name of the macchine is $HOSTNAME."
echo "Ypu are $USER."
echo "Your home directory is $HOME."
echo "Your mail INBOX is located in $MAIL."
echo
echo "if you are reading this message, "
echo "critical environtmental variables have geen set."
echo
echo

# ----------------------------------------------------------------------

# The ${variablename?} construction can also check
#+for variables set within the script.

ThisVariable=Value-of-ThisVariable
# Note, by the way, that string variables may be set
#+to characters disallowed in their names.
: ${ThisVariable?}
echo "Value of ThisVariable is $ThisVariable."
echo;echo

: ${ZZXy23AB?"ZZXy23AB has not been set."}
# Since ZZXy23AB has not been set,
#+then the script terminates with an error message.

# You can specify the error message.
# : ${variablename?"ERROR MESSAGE"}


# Same result with:	dummy_variable=${ZZy23AB?}
			dummy_variable=${ZZy23AB?"ZZy23AB has not been set."}
			echo ${ZZy23AB?} > /dev/null

# compare these methods of checking whether a variable has not been set
#+ with "set -u" . . .

echo "You will not see this message, because script already terminated."
HERE=0
exit $HERE	# Will NOT exit here.

# In fact, this script will return an exit status (echo $?) of 1.

