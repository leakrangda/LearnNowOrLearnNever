	.file	"Noinsitu.cpp"
	.section	.text._ZN9RectangleC2Eii,"axG",@progbits,_ZN9RectangleC5Eii,comdat
	.align 2
	.weak	_ZN9RectangleC2Eii
	.type	_ZN9RectangleC2Eii, @function
_ZN9RectangleC2Eii:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN9RectangleC2Eii, .-_ZN9RectangleC2Eii
	.weak	_ZN9RectangleC1Eii
	.set	_ZN9RectangleC1Eii,_ZN9RectangleC2Eii
	.section	.text._ZNK9Rectangle8getWidthEv,"axG",@progbits,_ZNK9Rectangle8getWidthEv,comdat
	.align 2
	.weak	_ZNK9Rectangle8getWidthEv
	.type	_ZNK9Rectangle8getWidthEv, @function
_ZNK9Rectangle8getWidthEv:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_ZNK9Rectangle8getWidthEv, .-_ZNK9Rectangle8getWidthEv
	.section	.text._ZN9Rectangle8setWidthEi,"axG",@progbits,_ZN9Rectangle8setWidthEi,comdat
	.align 2
	.weak	_ZN9Rectangle8setWidthEi
	.type	_ZN9Rectangle8setWidthEi, @function
_ZN9Rectangle8setWidthEi:
.LFB4:
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
.LFE4:
	.size	_ZN9Rectangle8setWidthEi, .-_ZN9Rectangle8setWidthEi
	.section	.text._ZNK9Rectangle9getHeightEv,"axG",@progbits,_ZNK9Rectangle9getHeightEv,comdat
	.align 2
	.weak	_ZNK9Rectangle9getHeightEv
	.type	_ZNK9Rectangle9getHeightEv, @function
_ZNK9Rectangle9getHeightEv:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	_ZNK9Rectangle9getHeightEv, .-_ZNK9Rectangle9getHeightEv
	.section	.text._ZN9Rectangle9setHeightEi,"axG",@progbits,_ZN9Rectangle9setHeightEi,comdat
	.align 2
	.weak	_ZN9Rectangle9setHeightEi
	.type	_ZN9Rectangle9setHeightEi, @function
_ZN9Rectangle9setHeightEi:
.LFB6:
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
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN9Rectangle9setHeightEi, .-_ZN9Rectangle9setHeightEi
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movl	$47, %edx
	movl	$19, %esi
	movq	%rax, %rdi
	call	_ZN9RectangleC1Eii
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9Rectangle9getHeightEv
	movl	%eax, -4(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9Rectangle8getWidthEv
	movl	%eax, %edx
	leaq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN9Rectangle9setHeightEi
	movl	-4(%rbp), %edx
	leaq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN9Rectangle8setWidthEi
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
