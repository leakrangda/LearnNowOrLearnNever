#!/bin/bash

PS3='Choose your favorite vegetable: '

echo

choice_of()
{
	select vegetable
	# [in list] omitted, so 'select uses argument passed to function.
	do
		echo
		echo "your favorite veggie is $vegetable."
		echo "Yuck!"
		echo
		break
	done
}

choice_of beans rice carrots radishes rutabaga spinach
#	  $1	$2   $3	     $4	      $5       $6
#	  passed to coice_of() function

exit 0
