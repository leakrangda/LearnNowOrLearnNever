	.file	"Access.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
