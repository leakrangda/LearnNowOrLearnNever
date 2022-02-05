#!/bin/sh
# another-param-sub.sh

# show another type of parameter default subtitution
# the syntax is ${paramter=value} or ${paramete:=}

var=

echo "show how \${parameter=value}:"
echo ${var=default}

echo
echo "show how \${parameter:=value}:"
echo ${var=default}

echo

unset var

echo "show how \${parameter=value} if variable is not declared:"
echo ${var=default}

echo
echo "show how \${parameter:=value} if variable is not declared:"
echo ${var:=default}

exit 0
