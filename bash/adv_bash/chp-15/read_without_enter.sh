#!/bin/bash

# Read a keypress without hitting ENTER.

read -s -n1 -p "Hit a key " keypress
echo; echo "Keypress was "\"$keypress\""."

# -s option means do not echo input
# -n N option means accept only N characters of input. 
# -p option means echo the following prompt before reading input.

# Using these options is tricky, since they need to be in correct order.
