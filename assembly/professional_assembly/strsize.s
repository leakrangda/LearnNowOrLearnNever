# strsize.s - Finding the size of a string using the SCAS instruction
.section .data
string1:
	.asciz "Testing, one, two, three, testing.\n"
.section .text
.globl _start
_start:
	leal string1, %edi	# load effective address string1 to EDI
	movl $0xffff, %ecx	# move 255 value to ECX
	movb $0, %al		# move 0 value to AL
	cld			# clear DF flag make EDI and ESI increment
	repne scasb		# compare 1 byte string AL with EDI and repeat
				# while ECX > 0 or AL != EDI
	jne notfound		# jump if the character is not found
	subw $0xffff, %cx	# substract CX with 255
	neg %cx			# negate CX
	dec %cx			# decrement CX
	movl $1, %eax
	movl %ecx, %ebx
	int $0x80
notfound:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
