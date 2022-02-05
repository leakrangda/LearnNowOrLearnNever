#!/bin/bash

# pro-sub: demo of process substiution

while read attr links owner group size month date time filename;do
	cat <<- EOF
		Filename:	$filename
		Size:		$size
		Owner:		$owner
		Group:		$group
		Modified:	$month $date $time
		Link:		$links
		Attribute:	$attr

	EOF
done < <(ls -l | tail -n +2)
