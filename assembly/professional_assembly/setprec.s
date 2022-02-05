# setprec.s - An example of setting the precission bits in the Control Register
.section .data
newvalue:
	.byte 0x7f, 0x00
.section .bss
	.lcomm control, 2

.section .text
.globl _start
_start:
	fstcw control		# store the FPU control to memory location
	fldcw newvalue		# load the FPU control to FPU register flag
	fstcw control		# again, store the FPU control to memory location

	movl $1, %eax
	movl $0, %ebx
	int $0x80
