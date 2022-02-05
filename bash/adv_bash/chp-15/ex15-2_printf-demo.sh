#!/bin/bash
# printf-demo.sh

declare -r PI=3.14159265358979		# read only var, i.e constant
declare -r DecimalConstant=313673

Message1="Greetings,"
Message2="Earthling."

echo

printf "Pi to 2 decimal places = %1.2f" $PI
echo
printf "Pi to 9 decimal places = %1.9f" $PI	# It even rounds off
						# correctly.
						# Prints a line feed,
printf "\n"					# Equivalent to 'echo'...

printf "Constant = \t%d\n" $DecimalConstant	# Insert tab (\tab)

echo

# =======================================================================
# Simulation of C function, sprintf()
# Loading a variable with a formated string.

echo

Pi12=$(printf "%1.12f" $PI)
echo "Pi to 12 decimal place = $Pi12"	#roundoff error

Msg=`printf "%s %s \n" $Message1 $Message2`
echo $Msg; echo $Msg

# As it happens, the 'sprintf' function can now be accessed
#+as a loadable module to Bash.
#+but this is not portable.

exit 0
