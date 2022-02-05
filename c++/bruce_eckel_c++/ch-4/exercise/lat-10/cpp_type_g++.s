	.file	"cpp_type.cpp"
	.text
	.align 2
	.globl	_ZN3TAG4funcEv
	.type	_ZN3TAG4funcEv, @function
_ZN3TAG4funcEv:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN3TAG4funcEv, .-_ZN3TAG4funcEv
	.ident	"GCC: (Debian 6.2.0-13) 6.2.0 20161109"
	.section	.note.GNU-stack,"",@progbits
