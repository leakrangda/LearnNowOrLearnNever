	.file	"10_lib.cpp"
	.section	.text._ZN1TC2Ei,"axG",@progbits,_ZN1TC5Ei,comdat
	.align 2
	.weak	_ZN1TC2Ei
	.type	_ZN1TC2Ei, @function
_ZN1TC2Ei:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN1TC2Ei, .-_ZN1TC2Ei
	.weak	_ZN1TC1Ei
	.set	_ZN1TC1Ei,_ZN1TC2Ei
	.section	.text._ZN1TppEi,"axG",@progbits,_ZN1TppEi,comdat
	.align 2
	.weak	_ZN1TppEi
	.type	_ZN1TppEi, @function
_ZN1TppEi:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %edx
	leaq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN1TC1Ei
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN1TppEi, .-_ZN1TppEi
	.section	.text._ZN1TppEv,"axG",@progbits,_ZN1TppEv,comdat
	.align 2
	.weak	_ZN1TppEv
	.type	_ZN1TppEv, @function
_ZN1TppEv:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN1TppEv, .-_ZN1TppEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN1TC1Ei
	leaq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN1TppEi
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN1TppEv
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-6) 6.3.0 20170205"
	.section	.note.GNU-stack,"",@progbits
