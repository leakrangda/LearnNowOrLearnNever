#!/bin/bash

###all about echo and stuff

#normal echo
echo this is a test

######echo with wild card
echo * 		#listing all files in the active directory
echo D*		#listing all file and directory with D as leading char
echo *s		#listing all file and directory with s as ending char
echo [[:upper:]]*	#listing all files with upper char as leading char-posix friendly
echo /usr/*/share	#listing all files and directory with format
echo .*		#listing all file and direcory that with leading .(dot)
echo .[!.]*	#listing all file and directory that with leading .(dot)but not double.
echo ~		#listing home directory of current user
echo ~foo	#listing home directory of user foo (if exist)

#####echo with expansion (aritmathic and brace)
echo $((2+2))	#listing of arithmatic expansion
echo Front-{A,B,C}-Back		#listing brace expansion
echo Number_{1..5}		#listing number with brace expansion
echo {1..15}	#listing number expansion
echo {Z..A}	#listing ascii expansion
echo $USER	#listing variable expansion

#####echo with variable and command expansion
echo $USER	#expand $USER variable
echo $(ls)	#execute ls command and echo the result to stdout
echo '$(echo foo) $(ls /)'	#suppressed expansion with single quote
