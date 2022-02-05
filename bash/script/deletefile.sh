#!/bin/bash

# delete files in derectory $dir_name

read -p "masukan path:" dir_name

if [[ ! -d "$dir_name" ]]; then
	echo "No such directory: '$dir_name'" >&2
	exit 1
fi
if ! cd $dir_name; then
	echo "Cannot cd to '$dir_name'" >&2
	exit 1
fi
if ! echo "rm *"; then
	echo "File deletion failed Check result" >&2
	exit 1
fi
