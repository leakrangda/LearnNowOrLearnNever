	.file	"Inline.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN5PointC2Ev,"axG",@progbits,_ZN5PointC5Ev,comdat
	.align 2
	.weak	_ZN5PointC2Ev
	.type	_ZN5PointC2Ev, @function
_ZN5PointC2Ev:
.LFB1459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1459:
	.size	_ZN5PointC2Ev, .-_ZN5PointC2Ev
	.weak	_ZN5PointC1Ev
	.set	_ZN5PointC1Ev,_ZN5PointC2Ev
	.section	.text._ZN5PointC2Eiii,"axG",@progbits,_ZN5PointC5Eiii,comdat
	.align 2
	.weak	_ZN5PointC2Eiii
	.type	_ZN5PointC2Eiii, @function
_ZN5PointC2Eiii:
.LFB1462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1462:
	.size	_ZN5PointC2Eiii, .-_ZN5PointC2Eiii
	.weak	_ZN5PointC1Eiii
	.set	_ZN5PointC1Eiii,_ZN5PointC2Eiii
	.section	.rodata
.LC0:
	.string	"i = "
.LC1:
	.string	", "
.LC2:
	.string	"j = "
.LC3:
	.string	"k = "
	.section	.text._ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 2
	.weak	_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L4
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L4:
	movq	-40(%rbp), %rax
	movl	8(%rax), %ebx
	movq	-40(%rbp), %rax
	movl	4(%rax), %r12d
	movq	-40(%rbp), %rax
	movl	(%rax), %r13d
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	%r13d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	%r12d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1464:
	.size	_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata
.LC4:
	.string	"value of p"
.LC5:
	.string	"value of q"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1465:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1465
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5PointC1Ev
	leaq	-144(%rbp), %rax
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN5PointC1Eiii
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-65(%rbp), %rdx
	leaq	-112(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE0:
	leaq	-112(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE1:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-17(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE2:
	leaq	-64(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNK5Point5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE3:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movl	$0, %eax
	jmp	.L15
.L12:
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L8
.L11:
	movq	%rax, %rbx
.L8:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.L14:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L10
.L13:
	movq	%rax, %rbx
.L10:
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L15:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1465:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1465:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1465-.LLSDACSB1465
.LLSDACSB1465:
	.uleb128 .LEHB0-.LFB1465
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L11-.LFB1465
	.uleb128 0
	.uleb128 .LEHB1-.LFB1465
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L12-.LFB1465
	.uleb128 0
	.uleb128 .LEHB2-.LFB1465
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L13-.LFB1465
	.uleb128 0
	.uleb128 .LEHB3-.LFB1465
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L14-.LFB1465
	.uleb128 0
	.uleb128 .LEHB4-.LFB1465
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1465:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1913:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L18
	cmpl	$65535, -8(%rbp)
	jne	.L18
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1913:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1914:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1914:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
