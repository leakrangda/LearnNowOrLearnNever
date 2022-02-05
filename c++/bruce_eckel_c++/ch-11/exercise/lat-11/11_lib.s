	.file	"11_lib.cpp"
	.text
	.globl	_Z5func1i
	.type	_Z5func1i, @function
_Z5func1i:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z5func1i, .-_Z5func1i
	.globl	_Z5func2c
	.type	_Z5func2c, @function
_Z5func2c:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z5func2c, .-_Z5func2c
	.globl	_Z5func3f
	.type	_Z5func3f, @function
_Z5func3f:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_Z5func3f, .-_Z5func3f
	.globl	_Z5func4d
	.type	_Z5func4d, @function
_Z5func4d:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_Z5func4d, .-_Z5func4d
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	$65, %edi
	call	_Z5func1i
	movl	$97, %edi
	call	_Z5func2c
	movss	.LC0(%rip), %xmm0
	call	_Z5func3f
	movq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	call	_Z5func4d
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1115815936
	.align 8
.LC1:
	.long	0
	.long	1079001088
	.ident	"GCC: (Debian 6.3.0-5) 6.3.0 20170124"
	.section	.note.GNU-stack,"",@progbits
