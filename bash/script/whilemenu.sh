#!/bin/bash

# while-menu: amenu driven system information program

DELAY=3	#Number of seconds to display results

while [[ $REPLY != 0 ]]; do
	clear
	cat <<-_EOF_
	Please SElect:

	1. Display System Information
	2. Display Disk Space
	3. Display Home Space Utilization
	0. Quit

	_EOF_
	read -p "Enter selection [0-3] > "

	if [ $(echo "$REPLY" | grep ^[0-3]$) ]; then		#for noraml test
	#if [[ $REPLAY =~ ^[0-3]$ ]]; then		#for advance test
		if [[ $REPLY == 1 ]]; then
			echo "Hostname: $HOSTNAME"
			uptime
			sleep $DELAY
		fi
		if [[ $REPLY == 2 ]]; then
			df -h
			sleep $DELAY
		fi
		if [[ $REPLY == 3 ]]; then
			if [[ $(id -u) -eq 0 ]]; then
				echo "Home Space Utilization (all Users)"
				du -sh /home/*
			else
				echo "Home Space Utilization ($USER)"
				du -sh $HOME
			fi
			sleep $DELAY
		fi
	else
		echo "Invalid entry."
		sleep $DELAY
	fi
done
echo "Program terminated."
