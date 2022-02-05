#!/bin/bash

# case-menu: a menu driven system information program

clear
echo "

A. Display System Information
B. Display Disk Space
C. Display Home Space Utilization
Q. Quit
"
read -p "Enter selection [A, B, C or Q] > "

case $REPLY in
	q|Q)
		echo "Program terminated."
		exit
		;;
	a|A)
		echo "Hostname: $HOSTNAME"
		uptime
		;;
	b|B)
		df -h
		;;
	c|C)
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home Space Utilization (all Users)"
			du -sh /home/*
		else
			echo "Home Space Utilization ($USER)"
			du -sh $HOME
		fi
		;;
	*)
		echo "Invalied entry" >&2
		exit 1
		;;
esac
