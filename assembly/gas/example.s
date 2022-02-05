.section .data
.section .text
.globl _start
_start:
movq $1, %rax
movq $0, %rbx
int $0x80

