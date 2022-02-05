#!/bin/bash

rm `cat filename`	# "filename" contains a list of files to delete.
#
# S. C. points out that "arg list too long" error might result.
# Better is 	xargs rm -- < filename
# ( -- covers those cases where "filename" begins with a "-" )

textfile_listing=`ls *.txt`
# Variable contains names of all *.txt files in current working directory.
echo $textfile_listing

textfile_listing2=$(ls *.txt)	# The alternative form of command substituion.
echo $textfile_listing2
# Same result.

# A possible probelm with putting
# is that a newline may creep in.
# 
# A safer way to assign a list of files to a parameter is with an array.
#	shopt -s nullglob	# If not match, filename expands to nothing.
#	textfile_listing=(*.txt)
#
# Thanks, S.C.
