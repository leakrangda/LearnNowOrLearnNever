# movstest3.s - An example of moving an entire string
.section .data
value1:
	.ascii "This is a test string.\n"
.section .bss
	.lcomm output, 23
.section .text
.globl _start
_start:
	leal value1, %esi	# load effective address of value1 to ESI
	leal output, %edi	# load effective address of output to EDI
	movl $23, %ecx		# load 23 to ECX for counter
	cld			# set for increment the ESI
loop1:
	movsb			# move a byte of string from ESI to EDI
	loop loop1		# loop through if ECX > 0

	movl $1, %eax
	movl $0, %ebx
	int $0x80		
