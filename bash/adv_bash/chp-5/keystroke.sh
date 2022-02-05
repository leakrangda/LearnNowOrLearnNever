#!/bin/bash
# authoer: sigurd solaas, 10 apr 2011
# used in ABS guide with permission.
# requires version 4.2+ of Bash.

key="no value yet"
while true;do
	clear
	echo "Bash Extra Keys Demo. Keys to try:"
	echo
	echo "* insert, delete, home, end page_up and page_down"
	echo "* the four arrow keys"
	echo "* tab, enter, escape, and space key"
	echo "* the letter and number keys, etc."
	echo
	echo "		d = show date time"
	echo "		q = quit"
	echo "==================================="
	echo

#convert the separate home-key to home-key_num_7:
if [ "$key" = $'\x1b\x4f\x48' ]; then
	key=$'\x1b\x5b\x31\x7e'
	#	quoted string-expansion construct.
fi

# convert the separate end key to end-key_num_1:
if [ "$key" = $'\x1b\x4f\x46' ]; then
	key=$'\x1b\x5b\x34\x7e'
fi

case "$key" in
	$'\x1b\x5b\x32\x7e')	#insert
		echo Insert key
		;;
	$'\x1b\5b\x33\x7e')	#delete
		echo Delete key
		;;
	$'\x1b\x5b\x31\x7e')	#home_key_num_7
		echo Home key
		;;
	$'\x1b\x5b\x34\x7e')	#end_key_num_1
		echo End Key
		;;
	$'\x1b\x5b\x35\x7e')	#Page_up
		echo Page_Up
		;;
	$'\x1b\x5b\x36\x7e')	#Page_down
		echo Page_Down
		;;
	$'\x1b\x5b\x41')	#up_arrow
		echo Up arrow
		;;
	$'\x1b\x5b\x42')	#down_arrow
		echo Down arrow
		;;
	$'\x1b\x5b\x43')	#right_arrow
		echo Right arrow
		;;
	$'\x1b\x5b\x44')	#left_arrow
		echo Left arrow
		;;
	$'\x09')	#tab
		echo Tab Key
		;;
	$'\x0a')	#enter
		echo Enter Key
		;;
	$'\x1b')	#escape
		echo escape key
		;;
	$'\x20')	#space
		echo space key
		;;
	d)
		date
		;;
	q)
		echo time to quit...
		echo
		exit 0
		;;
	*)
		echo you pressed: \'"$key"\'
		;;
esac

echo
echo "==================================="
unset K1 K2 K3
read -s -N1 -p "Press a Key: "
K1="$REPLY"
read -s -N2 -t 0.0001
K2="$REPLY"
read -s -N1 -t 0.0001
K3="$REPLY"
key="$K1$K2$K3"
done
exit $?

