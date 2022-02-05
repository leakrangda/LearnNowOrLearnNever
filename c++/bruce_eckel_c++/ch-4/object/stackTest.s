	.file	"stackTest.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cmpl	-4(%rbp), %eax
	je	.L3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movl	-8(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movl	$1, %edi
	call	exit@PLT
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1578:
	.size	_Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata
.LC0:
	.string	"Could not open file %s\n"
	.section	.text._Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE,"axG",@progbits,_Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE,comdat
	.weak	_Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE
	.type	_Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE, @function
_Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE:
.LFB1580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv@PLT
	testb	%al, %al
	je	.L6
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %edi
	call	exit@PLT
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1580:
	.size	_Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE, .-_Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC1:
	.string	"Must use %d arguments"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1582:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1582
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$688, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -692(%rbp)
	movq	%rsi, -704(%rbp)
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-65(%rbp), %rdx
	leaq	-112(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE0:
	leaq	-112(%rbp), %rdx
	movl	-692(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
.LEHB1:
	call	_Z11requireArgsiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE1:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-704(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-640(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE2:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-704(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-25(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE3:
	leaq	-64(%rbp), %rdx
	leaq	-640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_Z6assureRSt14basic_ifstreamIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS1_SaIcEEE
.LEHE4:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
.LEHB5:
	call	_ZN5Stack10initializeEv@PLT
.LEHE5:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
.L9:
	leaq	-688(%rbp), %rdx
	leaq	-640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT
	testb	%al, %al
	je	.L8
	movl	$32, %edi
	call	_Znwm@PLT
.LEHE6:
	movq	%rax, %rbx
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE7:
	leaq	-656(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZN5Stack4pushEPv@PLT
	jmp	.L9
.L8:
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Stack3popEv@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	testb	%al, %al
	je	.L10
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-24(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L8
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$32, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	jmp	.L8
.L10:
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Stack7cleanupEv@PLT
.LEHE8:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	$0, %eax
	jmp	.L27
.L21:
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L14
.L20:
	movq	%rax, %rbx
.L14:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.L23:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L16
.L22:
	movq	%rax, %rbx
.L16:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L17
.L26:
	movq	%rax, %r12
	movl	$32, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rbx
	jmp	.L19
.L25:
	movq	%rax, %rbx
.L19:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L17
.L24:
	movq	%rax, %rbx
.L17:
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE9:
.L27:
	addq	$688, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1582:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1582:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1582-.LLSDACSB1582
.LLSDACSB1582:
	.uleb128 .LEHB0-.LFB1582
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L20-.LFB1582
	.uleb128 0
	.uleb128 .LEHB1-.LFB1582
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB1582
	.uleb128 0
	.uleb128 .LEHB2-.LFB1582
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1582
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L22-.LFB1582
	.uleb128 0
	.uleb128 .LEHB4-.LFB1582
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L23-.LFB1582
	.uleb128 0
	.uleb128 .LEHB5-.LFB1582
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L24-.LFB1582
	.uleb128 0
	.uleb128 .LEHB6-.LFB1582
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L25-.LFB1582
	.uleb128 0
	.uleb128 .LEHB7-.LFB1582
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L26-.LFB1582
	.uleb128 0
	.uleb128 .LEHB8-.LFB1582
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L25-.LFB1582
	.uleb128 0
	.uleb128 .LEHB9-.LFB1582
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1582:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2087:
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
	jne	.L30
	cmpl	$65535, -8(%rbp)
	jne	.L30
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L30:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2087:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2088:
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
.LFE2088:
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
