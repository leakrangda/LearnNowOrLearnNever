	.file	"lib.cpp"
	.section	.rodata
	.align 4
	.type	_ZL5limit, @object
	.size	_ZL5limit, 4
_ZL5limit:
	.long	35100
	.text
	.globl	_Z2f1v
	.type	_Z2f1v, @function
_Z2f1v:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
.L5:
	cmpl	$35099, -4(%rbp)
	jg	.L6
	movl	$0, -8(%rbp)
.L4:
	cmpl	$35099, -8(%rbp)
	jg	.L3
	addl	$1, -8(%rbp)
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
	jmp	.L5
.L6:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z2f1v, .-_Z2f1v
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
