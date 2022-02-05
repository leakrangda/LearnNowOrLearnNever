#!/bin/bash

# array-2: use arrays to tally file owners

declare -A files file_group file_owner groups owners	# buat array

if [[ ! -d "$1" ]]; then	#bukan direktori?
	echo "usage: array-s dir" >&2
	exit 1
fi

for i in "$1"/*;do
	owners=$(stat -c %U "$i")
	groups=$(stat -c %G "$i")
	files["$i"]="$i"
	file_owner["$i"]=$owners
	file_group["$i"]=$groups
	((++owners[$owners]))
	((++groups[$groups]))
done

#list the collected files

{
	for i in "${file[@]}";do
		printf "%-40s %-10s %-10s\n"\
			"$i" ${file_owner["$i"]} ${file_group["$i"]}
	done
} | sort

echo

# list owner
echo "file owner:"
{
	for i in "${!owners[@]}";do
		printf "%-10s: %5d files(s)\n" "$i" ${owners["$i"]}
	done
} | sort

echo

# list groups
echo "file group owner:"
{
	for i in "${!groups[@]}";do 
		printf "%-10s: %5d file(s)\n" "$i" ${groups["$i"]}
	done
} | sort

