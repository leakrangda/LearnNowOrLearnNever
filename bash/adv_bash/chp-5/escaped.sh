#!/bin/bash
# escaped.sh: escaped characters

###############################################################################
### First, let's show some basic escaped-character usage. #####################
###############################################################################

# Escaping a newline.
# ------------------

echo ""

echo "this will print
as two lines."
# this will print
# as two lines.

echo "this will print \
	as one line."
# this will print as one line.

echo; echo

echo "===================="


echo "\v\v\v\v"		# prints \v\v\v\v literally.
# use the -e option with 'echo' to print escaped characters.

echo "===================="
echo "VERTICAL TABS"
echo -e "\v\v\v\v"	# prints 4 vertical tabs.
echo "===================="

echo "QUOTATION MARK"
echo -e "\042"		# prints (quote, octal ASCII character 42).
echo "===================="


# the $'\x' construct makes the -e option unnecessary.
echo;echo "NEWLINE and (maybe) BEEP"
echo $'\n'		# newline
echo $'\a'		# Allert (beep).
			# May only flash, not beep, depending terminal.
# we have seen $'\nnn' string expansion, and now ...

# =========================================================================== #
# version 2 of Bash introduced the $'\nnn' string expansion construct.
# =========================================================================== #

echo "Introducing the \$\' .... \' string expansion construct..."
echo "...featuring more quotation marks."

echo $'\t \042 \t' 	# Quote (") framed by tabs.
# note that '\nnn' is an octal value.

# it also works with hexadecimal values, in an $'\xhhh' construct.
echo $'\t \x22 \t'	# quote (") framed by tabs.
# Thank you, Greg keraunen, pointing this out.
# Earlier Bash version allowed '\x022'.

echo


# Assigning ASCII characters to a variable
# ------------------------------------------------------------------------- #
quote=$'\042'		# " assigned to a variable.
echo "$quote Quoted string $quote and this lies outside the quotes."


echo

# concatenting ASCII characters in a variable.
triple_underline=$'\137\137\137'	# 137 is octal for '_'
echo "$triple_underline UNDERLINE $triple_underline"

echo 

ABC=$'\101\102\103\010'			# 101, 102, and 103 are octal A, B, C
echo $ABC

echo

escape=$'\033'		# \033 is octal for escape.
echo "\"escape\" echoes as $escape"
#

echo

exit

