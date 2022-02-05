#!/bin/bash

# loan-calc: script to calculate montly loan payments
PROGNAME=${0##*/}	#Use parameter expansion to get basename
TIPE="biasa"

usage () {
	cat <<- EOF
	Usage: $PROGNAME [-i|--interactive] [PRINCIPAL INTEREST MONTHS]

	where:

	PRINCIPAL is the amount of the loan.
	INTERESet is the APR as number (7% = 0.07).
	MONTHS is the length of the loan's term.

	EOF
	return
}

##verify the input argument
verify () {
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
	return
}

kalkulasi () {
	principal=$1
	interest=$2
	months=$3

	bc <<- EOF
		scale = 10
		i = $interest / 12
		p = $principal
		n = $months
		a = p * ((i * ((1 + i) ^ n)) / (((1 + i) ^ n) - 1))
		print a, "\n"
	EOF
	return
}

interact () {
	while true;do
		clear
		read -p "masukan pricipal:" principal
		read -p "masukan interest:" interest
		read -p "masukan months:" months
		if [[ $principal =~ ^-?[[:digit:]]+(\.[[:digit:]]+)*$ && $interest =~ ^-?[[:digit:]]+(\.[[:digit:]]+)*$ && $months =~ ^-?[[:digit:]]+(\.[[:digit:]]+)*$ ]]; then
			kalkulasi $principal $interest $months
		else
			echo "argument tidak diketahui"
		fi
		read -p "lanjut?[Y|n]" jawab
		case $jawab in
			Y|y)
				continue;;
			N|n)
				break;;
			*)
				echo "unknown character."
				continue;;
		esac
	done
	return
}

eror () {
	usage
	return
}

#main program
verify $1 $2 $3
if [[ "$TIPE" == "biasa" ]]; then
	kalkulasi $1 $2 $3
elif [[ "$TIPE" == "interactive" ]]; then
	interact
else
	eror
fi
