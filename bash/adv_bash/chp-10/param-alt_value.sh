#!/bin/bash
# show how ${parameter+alt_value} and ${parameter:+alt_value} works:

# var is declared but null
var=
echo 'var is set, but null'
echo 'show how ${parameter+alt_value} works:'
echo "var=$var, value=${var+alt_value}"		# var=, value=
echo 'show how ${parameter:+alt_value} works:'
echo "var=$var, value=${var:+alt_value}"	# var=, value=
echo

# var is not declared
unset var
echo 'var is not set'
echo 'show how ${parameter+alt_value} works:'
echo "var=$var, value=${var+alt_value}"		# var=, value=
# again unset var
unset var
echo 'show how ${parameter:+alt_value} works:'
echo "var=$var, value=${var:+alt_value}"	# var=, value=
echo

# var is declared and has value
var=7
echo 'var is set and has value'
echo 'show how ${parameter+alt_value} works:'
echo "var=$var, value=${var+alt_value}"		# var=7, value=alt_value
var=7
echo 'show how ${parameter:+alt_value} works:'
echo "var=$var, value=${var:+alt_value}"	# var=7, value=alt_value

