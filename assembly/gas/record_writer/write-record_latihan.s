.include "linux.s"
.include "records-def.s"

record1:
	.ascii "Fredrick\0"
	.rept 31	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "Bartlett\0"
	.rept 31 	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "4242 s prairie\nTulsa, OK 555555\0"
	.rept 209	# padding to 240 bytes
	.byte 0
	.endr

	.long 45
record2:
	.ascii "Marilyn\0"
	.rept 32	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "Taylor\0"
	.rept 33 	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "2224 SJohannan St\nChicago, IL 12345\0"
	.rept 203	# padding to 240 bytes
	.byte 0
	.endr

	.long 29 
record3:
	.ascii "Derrick\0"
	.rept 32	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "McIntire\0"
	.rept 31 	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "500 W Oakland\nSan Diego, CA 54321\0"
	.rept 206	# padding to 240 bytes
	.byte 0
	.endr

	.long 36
record4:
	.ascii "ilhamnh\0"
	.rept 32	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "McIntire\0"
	.rept 31 	# padding to 40 bytes
	.byte 0
	.endr

	.ascii "500 W Oakland\nSan Diego, CA 54321\0"
	.rept 206	# padding to 240 bytes
	.byte 0
	.endr

	.long 24

#this is the name of the file we will write to
file_name:
	.ascii "text.dat\0"

	.equ ST_FILE_DESCRIPTOR, -4
	.globl _start
_start:
# Copy the stack pointer ot %ebp
	pushl %ebp
	movl %esp, %ebp
# allocate space to hold the file descriptor
	subl $4, %esp
# Open the file
	movl $SYS_OPEN, %eax
	movl $file_name, %ebx
	movl $0101, %ecx	# this says to create if it
				# doesnt exist, and open for
				# writing
	movl $0666, %edx
	int $LINUX_SYSCALL
# store the file descriptor away
	movl %eax, ST_FILE_DESCRIPTOR(%ebp)

# write the first record
	pushl ST_FILE_DESCRIPTOR(%ebp)
	pushl $record1
	call write_record
	addl $8, %esp
# write the first record
	pushl ST_FILE_DESCRIPTOR(%ebp)
	pushl $record2
	call write_record
	addl $8, %esp
# write the first record
	pushl ST_FILE_DESCRIPTOR(%ebp)
	pushl $record3
	call write_record
	addl $8, %esp
# write the first record
	pushl ST_FILE_DESCRIPTOR(%ebp)
	pushl $record4
	call write_record
	addl $8, %esp

# close the file descriptor
	movl $SYS_CLOSE, %eax
	movl ST_FILE_DESCRIPTOR(%ebp), %ebx
	int $LINUX_SYSCALL

# exit the program
	movl $SYS_EXIT, %eax
	movl $0, %ebx
	int $LINUX_SYSCALL
