	.file	"22_lib.cpp"
	.text
	.globl	_Z9function2v
	.type	_Z9function2v, @function
_Z9function2v:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
.L3:
	cmpl	$9, -4(%rbp)
	jg	.L4
	addl	$1, -4(%rbp)
	jmp	.L3
.L4:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z9function2v, .-_Z9function2v
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
