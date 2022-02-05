#!/bin/bash
# substring with expr


stringZ=abcABC123ABCabc
#1-based indexing.

#expr substr $string $position $length
echo `expr substr $stringZ 1 2`
echo `expr substr $stringZ 4 3`

#expr match "$string" '\($substring\)'
echo `expr match "$stringZ" '\(.[b-c]*[A-Z]..[0-9]\)'`	# abcABC1
#expr "$string" : "$substring"
echo `expr "$stringZ" : '\(.[b-c]*[A-Z]..[0-9]\)'`	# abcABC1
echo `expr "$stringZ" : '\(.......\)'`			# abcABC1

# extract substring at end of string
# expr match "$string" '.*\($substring)'
echo `expr match "$stringZ" '.*\([A-Z][A-Z][A-Z][a-c]*\)'` #ABCabc

# expr "$string":'.*($substring)'
echo `expr "$stringZ" : '.*\([A-Z][A-Z][A-Z][a-c]*\)'` #ABCabc
