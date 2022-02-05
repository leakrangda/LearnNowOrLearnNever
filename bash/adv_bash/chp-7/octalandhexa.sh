# [[ octal and hexadecimal evaluation ]]
# thank you, moritz gronbach, for pointing this out.


decimal=15
octal=017	# = 15 (decimal)
hex=0x0f	# = 15 (decimal)

if [ "$decimal" -eq "$octal" ]
then
	echo "$decimal equals $octal"
else
	echo "$decimal is not equal to $octal"		# 15 is not equal to 017
fi		# Doesn't evaluate within [ single brackets ]!

if [[ "$decimal" -eq "$octal" ]]
then
	echo "$decimal equals $octal"			# 15 equals 017
else
	echo "$decimal is not equals $octal"
fi		# evalueates within [[ double bracket ]] !

if [[ "$decimal " -eq "$hex" ]]
then
	echo "$decimal equals $hex"
else
	echo "$decimal is not equals $hex"
fi		# [[ $hexadecimal ]] also evaluates!
exit 0
