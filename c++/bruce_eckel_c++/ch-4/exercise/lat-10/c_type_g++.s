	.file	"c_type.c"
	.text
	.globl	_Z8functionv
	.type	_Z8functionv, @function
_Z8functionv:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z8functionv, .-_Z8functionv
	.ident	"GCC: (Debian 6.2.0-13) 6.2.0 20161109"
	.section	.note.GNU-stack,"",@progbits
