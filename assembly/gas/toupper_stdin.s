# purpose:	this program converts an input file
#		to an output file with all lettrs
#		converted to uppercase.
#
# processing	1) open the input file
#		2) open the output file
#		3) while we are not at the endo fo the input file
#			a) read part of the file into byte of memory
#			b) go through each byte of memory
#				if the byte is a lower-case letter,
#					convert it to uppercase
#			c) write the memory buffer to output file
#
.section .data
###########constant############

# system call numbers
	.equ SYS_OPEN, 5
	.equ SYS_WRITE, 4
	.equ SYS_READ, 3
	.equ SYS_CLOSE, 6
	.equ SYS_EXIT, 1

# options for open (look at
# /usr/include/asm/fcntl.h for
# various values. you can combine them
# by adding them or ORing them)
# this is discussed at greater length
# in "couting like a computer"
	.equ O_RDONLY, 0
	.equ O_CREATE_WRONLY_TRUNC, 03101

# standard file descriptors
	.equ STDIN, 0
	.equ STDOUT, 1
	.equ STDERR, 2

# system call interupt
	.equ LINUX_SYSCALL, 0x80
	.equ END_OF_FILE, 0	# this is the return value
				# of read which means we've
				# hit the end of the file.
	.equ NUMBER_ARGUMENTS, 2

.section .bss
#Buffer-this is where the data is loaded
#	from the data file and writen from into the output file
#	this should never exceed 16.000, for various reasons.

	.equ BUFFER_SIZE, 500
	.lcomm BUFFER_DATA, BUFFER_SIZE

.section .text
#stack position
	.equ ST_SIZE_RESERVE, 8
	.equ ST_FD_IN, -4
	.equ ST_FD_OUT, -8
	.equ ST_ARGC, 8		# number of argument
	.equ ST_ARGV_0, 4	# name of program
	.equ ST_ARGV_1, 8	# input file name
	.equ ST_ARGV_2, 12	# output file name
	.globl _start
_start:
##########INITIALIZE PROGRAM#########
# save the stace pointer
	movl %esp, %ebp
# allocate space for our file descriptors
# in the stack
	subl $ST_SIZE_RESERVE, %esp
open_file:
open_fd_in:
###OPEN INPUT FILE###
# Open Syscall
#	movl $SYS_OPEN, %eax
# input filename into %ebx
#	movl ST_ARGV_1(%ebp), %ebx
# read only flag
#	movl $O_RDONLY, %ecx
# this doesn't really matter for reading
#	movl $0666, %edx
# call Linux
#	int $LINUX_SYSCALL

store_fd_in:
# save the given file descriptor
	movl $STDIN, ST_FD_IN(%ebp)

# open_fd_out:
###OPEN OUTPUT FILE###
# open the file
#	movl $SYS_OPEN, %eax
# output filename into %ebx
#	movl ST_ARGV_2(%ebp), %ebx
# flag for writing to the file
#	movl $O_CREATE_WRONLY_TRUNC, %ecx
# mode for new file (if's created)
#	movl $0666, %edx
# call Linux
#	int $LINUX_SYSCALL
store_fd_out:
# store the file descriptor here
	movl $STDOUT, ST_FD_OUT(%ebp)

###BEGIN MAIN LOOP###
read_loop_begin:
###READ IN A BLOCK FROM THE INPUT FILE###
	movl $SYS_READ, %eax
#get the input file descriptor
	movl ST_FD_IN(%ebp), %ebx
#the location to read into
	movl $BUFFER_DATA, %ecx
#the size of the buffer
	movl $BUFFER_SIZE, %edx
#size of buffer read is returned in %eax
	int $LINUX_SYSCALL

###EXIT IF WE'VE REACHED THE END###
#check for end of file marker
	cmpl $END_OF_FILE, %eax
#if found or on error. go to the end
	jle end_loop

continue_read_loop:
###CONVERT THE BLOCK TO UPPER CASe###
	pushl $BUFFER_DATA	# location of buffer
	pushl %eax		# size of the buffer
	call convert_to_upper	# the function
	popl %eax		# get the size back
	addl $4, %esp		# restore the %esp
# size of the buffer
	movl %eax, %edx
	movl $SYS_WRITE, %eax
# file to use
	movl ST_FD_OUT(%ebp), %ebx
# location of the buffer
	movl $BUFFER_DATA, %ecx
	int $LINUX_SYSCALL
###CONTINUE the DOOR###
	jmp read_loop_begin

end_loop:
###CLOSE THE FILEs###
#NOTE - we don't need to do error checking
#	on these, because error conditions
#	don't signify anything special here
	movl $SYS_CLOSE, %eax
	movl ST_FD_OUT(%ebp), %ebx
	int $LINUX_SYSCALL

	movl $SYS_CLOSE, %eax
	movl ST_FD_IN(%ebp), %ebx
	int $LINUX_SYSCALL

###EXIT###
	movl $SYS_EXIT, %eax
	movl $0, %ebx
	int $LINUX_SYSCALL

#PURPOSE:	this function actually does the 
#		conversion to upper case for a block
#
#INPUT:		The first parameter is the location
#		of the block of memory to convert
#		the second parameter is the length of
#		that buffer
#
#OUTPUT:	This function overwrites the current
#		buffer with the upper-cassified version.
#
#VARIABLES:	
#		%eax - beginning of buffer
#		%ebx - length of buffer
#		%edi - current buffer offset
#		%cl - current byte being examined
#			(first part of %ecx)


###CONSTANT###
#the lower boundary of our search
.equ	LOWERCASE_A, 'a'
#the upper boundary of our search
.equ	LOWERCASE_Z, 'z'
#conversion between upper and lower case
.equ	UPPER_CONVERSION, 'A' - 'a'

###STACK STUFF###
.equ 	ST_BUFFER_LEN, 8	#length of buffer
.equ	ST_BUFFER, 12		#actual buffer
convert_to_upper:
	pushl %ebp
	movl %esp, %ebp
###SETUP VARIABLE###
	movl ST_BUFFER(%ebp), %eax
	movl ST_BUFFER_LEN(%ebp), %ebx
	movl $0, %edi
#if a buffer with zero length was given
#to us, just leave
	cmpl $0, %ebx
	je end_convert_loop

convert_loop:
#get the current byte
	movb (%eax, %edi, 1),  %cl
#go to the next byte unless it is between
# 'a' and 'z'
	cmpb $LOWERCASE_A, %cl
	jl next_byte
	cmpb $LOWERCASE_Z, %cl
	jg next_byte
#otherwise convert the byte to uppercase
	addb $UPPER_CONVERSION, %cl
#and store it back
	movb %cl, (%eax, %edi, 1)
next_byte:
	incl %edi		#next byte
	cmpl %edi, %ebx		#continue unless
				#we've reached the 
				#end
	jne convert_loop
end_convert_loop:
#no return value, just leave
	movl %ebp, %esp
	popl %ebp
	ret
