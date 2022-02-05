#!/bin/bash

# readonly declaration in bash
declare -r var1=1
echo "var1 = $var1"		# var1 = 1

(( var1++ ))			# x.sh: line 7: var1: readonly variable
