#!/bin/bash

${1=+.}
for i in $(echo $1*);do
	if [ $(echo "${i}" | grep \[bg\]z ) ];then
		echo "$i is compressed"
	else
		echo "$i is not compressed"
	fi
done
