#!/bin/bash
# embedding Ctrl-H in a string.


a=""		# Two ctl-H's -- backspaces
			# ctl-V ctl-H, suing vi/vim

echo "abcdef"		# abcdef
echo
echo -n "abcdef$a "	# abcd f
# space at end   ^	      ^  Backspaces twice.
echo
echo -n "abcdef$a"	# abcdef
# no space at end	       ^ doens't backspace (why?).
			# result may not be quite as expected.
echo;echo

# Constantin Hagermeir suggest trying:
# a=$'\010\010'
# a=$'\b\b'
# a=$'\x08\x08\'
# but, this does no change the results.

###############################################################################
# now, try this.

rubout=""	# 5 x ctl-H

echo -n "12345678"
sleep 2
echo -n "$rubout"
sleep 2

exit 0

