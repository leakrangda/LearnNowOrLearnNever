#!/bin/bash


verify () {
	echo -e "'$1'=$1"
	echo -e "'$2'=$2"
	echo -e "'$3'=$3"

	if [[ $1 =~ ^-?[[:digit:]]+(\.[[:digit:]]+)*$ && $2 =~ ^-?[[:digit:]]+(\.[[:digit:]]+)*$ && $3 =~ ^-?[[:digit:]]+(\.[[:digit:]]+)*$ ]]; then
			TIPE="biasa"
	elif [[ $1 =~ ^-[-]?[[:alpha:]]+$ ]]; then
		if [ $1 = "-i" ];then
			TIPE="interactive"
		elif [ $1 = "--interactive" ]; then
			TIPE="interactive"
		else
			TIPE="ERROR"
		fi
	else
		TIPE="ERROR"
	fi
	echo "'$TIPE'==$TIPE"
	return
}

TIPE=
verify $1 $2 $3
if [[ $TIPE == "biasa" ]]; then
	echo "mode biasa"
elif [[ $TIPE == "interactive" ]]; then
	echo "mode interactive"
else
	echo "error mode"
fi
