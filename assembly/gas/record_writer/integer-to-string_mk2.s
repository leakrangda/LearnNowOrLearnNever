#PURPOSE:	convert an integer number to adecimal string
#		for display
#
#INPUT:		A buffer large engouch to hold the largest possible number
#		an integer to convert
#
#OUTPUT: 	the buffer will be overwritten with the decimal string
#
#
#VARIABLES:
#
#
# %ecx will hold the count of characters processed
# %eax will hold the current value
# %edi will hold the base (10)

.equ ST_BASE, 16
.equ ST_VALUE, 8
.equ ST_BUFFER, 12

.globl integer2string
.type integer2string, @function
integer2string:
	# Normal function beginning
	pushl %ebp
	movl %esp, %ebp
	
	#current character count
	movl $0, %ecx

	#move the value into position
	movl ST_VALUE(%ebp), %eax

	# when we divide by 10, the 10
	# must be in a register or memory location
	movl ST_BASE(%ebp), %edi

conversion_loop:
	# Division is actually performed on the 
	# combined %edx:%eax register, so first
	# clear out %edx
	movl $0, %edx

	# divide %edx:%eax (which are implied) by 10.
	# store the quotient in %eax and the remainder
	# in %edx (both of which are implied).
	divl %edi

	# quotient is in the reight place. %edx has the remainder
	# which now need to be converted into a number. So, 5edx has a number 
	# that is 0 through 9. you could also interpret this as
	# an index on the ASCII table starting from the
	# character '0'. the ascii code for '0' plus zero
	# is still the ascii code for '0'. the ascii code
	# for '0' plus 1 is the ascii code for the 
	# CHARACTER '1'. therefore, the following 
	# instruction will give us the character for the
	# number stored in %edx
	addl $'0', %edx

	# now we will take this value and push it on the
	# stack. This way, when we are done, we can just 
	# pop off the caracters one-by-one and they will
	# be in the right order. Note that we are pushing
	# the whole register, but we only need the byte
	# in %dl (the last byte of the %edx register) for 
	# the character.
	pushl %edx
	
	# increment the digit count
	incl %ecx

	# check to see if %eax is zero yet, go to next
	# step if so.
	cmpl $0, %eax
	je end_conversion_loop

	# %eax already has its new value
	jmp conversion_loop
end_conversion_loop:
	# Th string is now on the stack, if we pop it
	# off a caracter at a time, we can copy it into
	# the buffer and be done.

	# get the pointer to buffer in %edx
	movl ST_BUFFER(%ebp), %edx

copy_reversing_loop:
	# we pushed a whole register, but we only need
	# the last byte. so we are going to pop off to
	# the entire %eax register, but then only move the 
	# small part(%al) into the character string.
	popl %eax
	movb %al, (%edx)

	# decreasgin %ecx so we know when we are finished
	decl %ecx
	# increasing %edx so that it will we pointing to
	# the next byte
	incl %edx

	# check to see if we are finished
	cmpl $0, %ecx

	# if so, jump to the end of the function
	je end_copy_reversing_loop
	# otherwise, repeat the loop
	jmp copy_reversing_loop
end_copy_reversing_loop:
	# done copying. now write a null byte and return
	movb $0, (%edx)
	movl %ebp, %esp
	popl %ebp
	ret

