.include "linux.s"
.include "records-def.s"

.section .data
file_name:
	.ascii "text.dat\0"
#.section .bss
#.lcomm record_buffer, RECORD_SIZE
record_buffer_ptr:
	.long 0
.section .text

#main program

.globl _start
_start:
	# these are the locations on the stack where
	# we will store the input and output the descriptor
	# (FYI - we could have used memory addresses in
	# a .data section instead
	.equ ST_INPUT_DESCRIPTOR, -4
	.equ ST_OUTPUT_DESCRIPTOR, -8

	# copy the stack pointer ot %ebp
	movl %esp, %ebp
	# allocate space to hold the file descriptor
	subl $8, %esp		# for local variable

	# initialize the memory allocator
	call allocate_init

	# allocate the memory
	pushl $RECORD_SIZE
	call allocate
	movl %eax, record_buffer_ptr
	
	# OPEN THE FILE 
	movl $SYS_OPEN, %eax
	movl $file_name, %ebx
	movl $0, %ecx		#this says to open read-only
	movl $0666, %edx
	int $LINUX_SYSCALL

	# save file descriptor
	movl %eax, ST_INPUT_DESCRIPTOR(%ebp)

	# even though it's a constant, we are
	# saving the output file descriptor in 
	# a local variable so that if we later
	# decide that it isn't always going to
	# be STDOUT, we can change it easily.
	movl $STDOUT, ST_OUTPUT_DESCRIPTOR(%ebp)
record_read_loop:
	pushl ST_INPUT_DESCRIPTOR(%ebp)
	pushl record_buffer_ptr
	call read_record
	addl $8, %esp

	# return the number of bytes read.
	# if it isn't the same number we 
	# requested, then it's either an 
	# end-of-file, or an error so we're
	# quitting.
	cmpl $RECORD_SIZE, %eax
	jne finished_reading
	
	# othersiwe, print out the first name
	# but first, we must know it's size
	movl record_buffer_ptr, %eax
	addl $RECORD_FIRSTNAME, %eax
	pushl %eax
	call count_chars	
	addl $4, %esp		# clear local variable

	# WRITE THE RESULT
	movl %eax, %edx
	movl ST_OUTPUT_DESCRIPTOR(%ebp), %ebx
	movl $SYS_WRITE, %eax
	movl record_buffer_ptr, %ecx
	addl $RECORD_FIRSTNAME, %ecx
	int $LINUX_SYSCALL

	pushl ST_OUTPUT_DESCRIPTOR(%ebp)
	call write_newline
	addl $4, %esp		# clear local variable

	jmp record_read_loop
finished_reading:
	pushl record_buffer_ptr
	call deallocate
	movl $SYS_EXIT, %eax
	movl $0, %ebx
	int $LINUX_SYSCALL
