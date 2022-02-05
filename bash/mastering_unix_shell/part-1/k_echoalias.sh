#!/bash/ksh

#set up the correct echo comand usage. Many linux
#distributions will excute in bash even if the 
#script specifies Korn shell. Bash shell reuires
#we use echo -e when use \n, \c, or any escape character.

case $SHELL in
	*/bin/bash) 
		alias echo="echo -"
		;;
esac
