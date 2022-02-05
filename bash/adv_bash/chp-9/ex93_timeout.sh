#!/bin/bash
# timeout.sh


# Written by Stephane Chazelas,
#+and moified by the document outhor.

INTERVAL=5			# timeout interval


timedout_read(){
	timeout=$1
	varname=$2
	old_tty_settings=`stty -g`
	stty -icanon min 0 time ${timeout}0
	eval read $varname		# or read $varname
	stty "$old_tty_settings"
	# See man page for "stty."
}

echo; echo -n "What's your name? Quick! "
timedout_read $INTERVAL your_name

# This may not work on every terminal type.
# The maximum timeout depends ont the terminal
#+(it is often 25.5 seconds).

echo

if [ ! -z "$your_name" ] 	# if name input before time out ...
then
	echo "Your name is $your_name."
else
	echo "Timed out."
fi

echo

# The behavior of thes script differs somewhat from "timed-input.sh"
# At each keystroke, the counter resets.

exit 0
