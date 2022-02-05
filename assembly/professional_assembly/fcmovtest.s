# fcmovtest.s - An example of the FCMOVxx instruction
.section .data
value1:
	.float 20.5
value2:
	.float 10.90
.section .text
.globl _start
_start:
	finit		# init the FPU
	flds value1	# load single precission float value to st0
	flds value2	# load single precission float value to st0
	fcomi %st(1), %st(0)	# compare st1 with st0
	fcmovb %st(1), %st(0)	# mov st1 to st0 if st1 is below st0

	movl $1, %eax
	movl $0, %ebx
	int $0x80
