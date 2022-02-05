#!/bin/bash

case $(uname) in
	Linux)
		echo "ini linux"
		;;
	Unix)
		echo "ini unix"
		;;
	SunOS)
		echo "ini solaris"
		;;
	HP-UX)
		echo "ini hp-ux"
		;;
	*)
		echo "ini yang lain"
		;;
esac
