#!/bin/bash

butuh=5

if [ $# -lt $butuh ]; then
	echo " $(basename $0) butuh $butuh argument";
else
	for i in `seq 1 $butuh`; do
		echo " argument $i adalah $1"
		shift
	done
fi
