#cleanup
#run as root, of course

cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo " log files cleaned up."

