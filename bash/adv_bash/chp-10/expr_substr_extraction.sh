#!/bin/bash

string=abcABC123ABCabc
# 0 based indexing

echo ${string:0}		# abcABC123ABCabc
echo ${string:1}		# bcABC123ABCabc
echo ${string:7}		# 23ABCabc


echo ${string:7:3}		# 23A
				# Three characters of substring.

# Is it possible to index from the right?

echo ${string:-4}		# abcABC123ABCabc
# Defaults to full string, as in ${parameter:-default}.
# However

echo ${string:(-4)}		# Cabc
echo ${string: -4}		# Cabc
# Now, it works.
# Parentheses or added space "escape" the position parameter.

# Thank you, Dan Jacobson, for pointing this out.

