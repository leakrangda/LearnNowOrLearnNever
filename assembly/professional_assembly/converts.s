# converts.s - Converting lower to upper case
.section .data
string1:
	.asciz "This is a TEST of the conversion program!\n"
length:
	.int 43
.section .text
.globl _start
_start:
	leal string1, %esi	# load effective address of string1 to ESI
	movl %esi, %edi		# move ESI value to EDI
	movl length, %ecx	# move length value to ECX as accumulator
	cld			# clear DS flag to increment ESI and EDI
loop1:
	lodsb			# load 1 byte char to EAX
	cmpb $'a', %al		# compare 1 byte AL with 'a'
	jl skip			# if less jump to skip
	cmpb $'z', %al		# compare 1 byte AL wiht 'z'
	jg skip			# if greater jump to skip
	subb $0x20, %al		# subtract AL with value $0x20 (32 decimal)
skip:
	stosb			# store 1 byte char to EDI and increment EDI
	loop loop1		# loop loop1 while EAX > 0
end:
	pushl $string1		# push address of string1
	call printf		# call C library printf
	addl $4, %esp		# clear local variable
	pushl $0		# push 0 value
	call exit		# call C library exit
