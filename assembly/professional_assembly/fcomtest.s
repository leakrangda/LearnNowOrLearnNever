# fcomtest.s - An example of the FCOM instruction
.section .data
value1:
	.float 10.923
value2:
	.float 4.5532
.section .text
.globl _start
_start:
	flds value1		# load single precission float value to st0
	fcoms value2		# compare single precission float value with st0
	fstsw			# store FPU status register to AX
	sahf			# load EFLAGS from AH
	ja greater		# 
	jb lessthan
	movl $1, %eax
	movl $0, %ebx
	int $0x80
greater:
	movl $1, %eax
	movl $2, %ebx
	int $0x80
lessthan:
	movl $1, %eax
	movl $1, %ebx
	int $0x80
