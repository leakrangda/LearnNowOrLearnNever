# reptest1.s - An exampale of the REP instruction
.section .data
value1:
	.ascii "This is a test string.\n"
.section .bss
	.lcomm output, 23
.section .text
.globl _start
_start:
	leal value1, %esi	# load effective address value1 to ESI
	leal output, %edi	# load effective address output to EDI
	movl $23, %ecx		# move 23 to ECX as counter
	cld			# clear SEGMENT register to make ESI Increment
	rep movsb		# repeat the byte string copying from ESI to EDI

	movl $1, %eax
	movl $0, %ebx
	int $0x80
