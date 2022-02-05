	.file	"PassingBigStructures.cpp"
	.globl	B
	.bss
	.align 32
	.type	B, @object
	.size	B, 112
B:
	.zero	112
	.globl	B2
	.align 32
	.type	B2, @object
	.size	B2, 112
B2:
	.zero	112
	.text
	.globl	_Z6bigfun3Big
	.type	_Z6bigfun3Big, @function
_Z6bigfun3Big:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$100, 116(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	56(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	64(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	72(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	80(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	88(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	96(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	104(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	112(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	120(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z6bigfun3Big, .-_Z6bigfun3Big
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	leaq	-112(%rbp), %rax
	pushq	104+B(%rip)
	pushq	96+B(%rip)
	pushq	88+B(%rip)
	pushq	80+B(%rip)
	pushq	72+B(%rip)
	pushq	64+B(%rip)
	pushq	56+B(%rip)
	pushq	48+B(%rip)
	pushq	40+B(%rip)
	pushq	32+B(%rip)
	pushq	24+B(%rip)
	pushq	16+B(%rip)
	pushq	8+B(%rip)
	pushq	B(%rip)
	movq	%rax, %rdi
	call	_Z6bigfun3Big
	addq	$112, %rsp
	movq	-112(%rbp), %rax
	movq	%rax, B2(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, 8+B2(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, 16+B2(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, 24+B2(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, 32+B2(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, 40+B2(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, 48+B2(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, 56+B2(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, 64+B2(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, 72+B2(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, 80+B2(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, 88+B2(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, 96+B2(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, 104+B2(%rip)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-5) 6.3.0 20170124"
	.section	.note.GNU-stack,"",@progbits
