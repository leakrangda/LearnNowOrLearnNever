#!/bin/bash

# case-menu: a menu driven system information program

DELAY=3	#Number of seconds to display results

while true; do
	clear
	cat <<-_EOF_
	Please SElect:

	1. Display System Information
	2. Display Disk Space
	3. Display Home Space Utilization
	0. Quit

	_EOF_
	read -p "Enter selection [0-3] > "

	case $REPLY in		#for normal test
	#if [[ $REPLAY =~ ^[0-3]$ ]]; then		#for advance test
		0)
			echo "Program terminatedd."
			;;
		1)
			echo "Hostname: $HOSTNAME"
			uptime
			sleep $DELAY
			continue 
			;;
		2)
			df -h
			sleep $DELAY
			continue
			;;
		3)
			if [[ $(id -u) -eq 0 ]]; then
				echo "Home Space Utilization (all Users)"
				du -sh /home/*
			else
				echo "Home Space Utilization ($USER)"
				du -sh $HOME
			fi
			sleep $DELAY
			continue
			;;
		*)
			echo "Invalid entry."
			sleep $DELAY
			;;
	esac
done
echo "Program terminated."
