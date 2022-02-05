	.file	"Noinsitu.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
