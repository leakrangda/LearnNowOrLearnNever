#!/bin/bash

# ul-param: demonstrace cse conversion via parameter expansion

if [[ $1 ]]; then
	echo ${1,,}
	echo ${1,}
	echo ${1^^}
	echo ${1^}
fi
