#!/bin/bash

E_WRONG_DIRECTORY=85

clear	# Clear The screen.

TargerDirectory=/home/rangda/Downloads

cd $TargetDirectory
echo "Deleteing stale files in $targetDirectory."

if [ "$PWD" != "$TargetDirectory" ]
then	# Keep from wiping out wrong directory by accident.
	echo "Wrong directory!"
	echo "IN $PWD, rather than $TargetDirectory!"
	echo "Bailing out!"
	exit $E_WRONG_DIRECTORY
fi


rm -rf *
rm .[A-Za-z0-9]*	# Delete dotfiles.
# rm -f .[^.]* ..?*	to remove filenames beginning with multiple dots.
# (shopt -s dotglob; rm -f *)	will also work.
# Thanks, S.C. For pointing this out.

# A filename (`basename`) may contain all characters in the 0 - 255 range,
#+except "/".
# Deleting files beginning with weird characters, such as - 
#+is left as an exercise. (Hint: rm ./-weirdname or rm -- -weirdname)
result=$?	# Result delete operation. If successful = 0


echo
ls -al		# Any files left?
echo "Done"
echo "Old files deleted in $TargetDirectory."

# Various other operations here, as necessary.

exit $result
