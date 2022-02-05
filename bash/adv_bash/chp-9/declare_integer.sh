#!/bin/bash

# declare a variable as integer
# The script will treat subsequent occurrences of "number" as an integer.

declare -i number
number=3
echo "Number = $number"			# Number = 3

number=three
echo "Number = $number"			# Number = 0
# Tries to evaluate the string "three" as an integer.
