.include "linux.s"

.section .data

# this is where it will be stored
tmp_buffer:
	.ascii "\0\0\0\0\0\0\0\0\0\0\0"
.section .text

.globl _start
_start:
	movl %esp, %ebp
	
	# the base that used, not exceed 10
	pushl $8
	# Storage for the result
	pushl $tmp_buffer
	# number to convert
	pushl $824
	call integer2string
	# clean the local variable
	addl $8, %esp

	# get the character count for our system call
	pushl $tmp_buffer
	call count_chars
	addl $4, %esp

	# the count goes in %edx for SYS_WRITE
	movl %eax, %edx

	# make the system call
	movl $SYS_WRITE, %eax
	movl $STDOUT, %ebx
	movl $tmp_buffer, %ecx
	int $LINUX_SYSCALL

	#write a carriage return
	pushl $STDOUT
	call write_newline

	# Exit
	movl $SYS_EXIT, %eax
	movl $0, %ebx
	int $LINUX_SYSCALL

