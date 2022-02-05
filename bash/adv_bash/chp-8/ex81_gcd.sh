#!/bin/bash
# gcd.sh: greatest common divisor
#	  Uses Euclid's algorithm

# The "gretest common divisor" (gcd) of two integers
#+ is the largest integers that will divid both, leaving no reaminder.

# Euclid's algorithm uses successive division.
# 	in each pass,
#+		dividend <--- divisor
#+		divisor  <--- remainder
#+ 	until remainder = 0.
#	The gcd = dividen, on the final pass.
#
# For an excellent discussion of euclid's algorithm, see
#+ Jim Loy's site, http://www.jimloy.com/number/euclids.htm.


# -----------------------------------------------------
# Argument check
ARGS=2
E_BADARGS=85

if [ $# -ne "$ARGS" ]
then
	echo "Usage: `basename $0` first-number second-number"
	exit $E_BADARGS
fi
# -----------------------------------------------------


gcd()
{
	dividend=$1			# Arbitrary assignment.
	divisor=$2			#! it doesn't matter which one is
					#+ larger. Why not?.
	remainder=1			# If an uninitalized variable is 
					#+ used inside test bracket, an
					#+ error message results.
	until [ "$remainder" -eq 0 ]
	do    #  ^^^^^^^^^^ Must be previsously initialized!.
		let "remainder = $dividend % $divisor"
		dividend=$divisor	# Now repeat with 2 smallest numbers.
		divisor=$remainder	# Euclid's algorithm
	done
}	# Last $dividend is the gcd.

gcd $1 $2

echo;echo "GCD of $1 and $2 = $dividend"; echo

# Exercises:
# --------
# 1) Check command-line argument to make sure they are integers,
#+ and exit the script with an appropriate error message if not.
# 2) Rewrite the gcd() function to use local variables.
