#!/bin/bash

# showing the use of index in expr

# expr index $string $substring
string=abcABC123ABCabc

echo `expr index "$string" C12`		# 6 (the first to be found was
					#+ the C

# expr index $string $substring
echo $(expr index "$string" 1c)		# 3 (the first to be found was
					#+1


