#!/bin/bash
# expr string lenght checking syntax

STRING="abcdefghijklmnopqrstuvwxyz"

echo ${#STRING}		# bash builtin string checking

# expr length $string
echo `expr length $STRING`	# expr string length checking

# expr "$string : '.*'"
echo `expr $STRING : '.*'` 
