.include "linux.s"
.include "records-def.s"

.section .data
input_file_name:
	.ascii "text.dat\0"
output_file_name:
	.ascii "testout.dat\0"
no_open_file_code:
	.ascii "0001: \0"
no_open_file_msg:
	.ascii "Can't Open Input File\0"

.section .bss
	.lcomm record_buffer, RECORD_SIZE
# stack offsets of local variables
.equ ST_INPUT_DESCRIPTOR, -4
.equ ST_OUTPUT_DESCRIPTOR, -8

.section .text
.globl _start
_start:
# copy stack pointer and make room for local variables
	movl %esp, %ebp
	subl $8, %esp		# for local variable

# Open file for reading
	movl $SYS_OPEN, %eax
	movl $input_file_name, %ebx
	movl $0, %ecx		# for read-only
	movl $0666, %edx
	int $LINUX_SYSCALL

	movl %eax, ST_INPUT_DESCRIPTOR(%ebp)	# save fd to local variable

# this will test and see if %eax is negative.
# if it is not negative, it will jump to 
# continue_processing. otherwise it will handle 
# the error condition that the negative number 
# represent.
	cmpl $0, %eax
	jge continue_processing
	# send the error
	pushl $no_open_file_msg
	pushl $no_open_file_code
	call error_exit

continue_processing:	
# Open file for writing
	movl $SYS_OPEN, %eax
	movl $output_file_name, %ebx
	movl $0101, %ecx
	movl $0666, %edx
	int $LINUX_SYSCALL

	movl %eax, ST_OUTPUT_DESCRIPTOR(%ebp)	# save fd to local variable

loop_begin:
	pushl ST_INPUT_DESCRIPTOR(%ebp)
	pushl $record_buffer
	call read_record
	addl $8, %esp

	# return the number of bytes read.
	# if it isn't the same number we 
	# requested, then it's either an 
	# end-of-file, or an error so we're
	# quitting.

	cmpl $RECORD_SIZE, %eax
	jne loop_end

	# increment the age
	incl record_buffer + RECORD_AGE

	# write the record out
	pushl ST_OUTPUT_DESCRIPTOR(%ebp)
	pushl $record_buffer
	call write_record
	addl $8, %esp

	jmp loop_begin
loop_end:
	movl $SYS_EXIT, %eax
	movl $0, %ebx
	int $LINUX_SYSCALL

