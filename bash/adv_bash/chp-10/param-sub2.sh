#!/bin/bash
# show how ${parameter=default} and ${paramter:=default} works:

# declared variable but set to null
var=

echo 'var is declared but null'
echo 'show how ${parameter=default} works:'
echo "var=$var, value=${var=default}"		# var=, value= 
echo 'show how ${parameter:=default} works:'
echo "var=$var, value=${var:=default}"		# var=, value=default
echo

# unset the variable
unset var
echo 'var is not declared'
echo 'show how ${parameter=default} works:'
echo "var=$var, value=${var=default}"		# var=, value=default 
# again unset it
unset var
echo 'show how ${parameter:=default} works:'
echo "var=$var, value=${var:=default}"		# var=, value=default
echo

# now variable with a value
var=7
echo 'var is declared and has value'
echo 'show how ${parameter=default} works:'
echo "var=$var, value=${var=default}"		# var=7, value=7
echo 'show how ${parameter:=default} works:'
echo "var=$var, value=${var:=default}"		# var=7, value=7
exit 0
