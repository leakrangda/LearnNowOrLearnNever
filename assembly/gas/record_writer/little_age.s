.include "linux.s"
.include "records-def.s"

.section .data
file_name:
	.ascii "text.dat\0"
.section .bss
	.lcomm buffer, RECORD_SIZE
.section .text
.globl _start
_start:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp			# buat ruangan unutuk local variable

# buka filenya
	movl $SYS_OPEN, %eax		# %eax untuk kernel kode
	movl $file_name, %ebx		# %ebx untuk nama file
	movl $0, %ecx			# %ecx untuk mode pembukaan file	
	movl $0666, %edx		# %edx untuk izin file
	int $LINUX_SYSCALL		# linux interupt syscall
	movl %eax, -4(%ebp)		# simpan file descriptor di local variableh

	pushl -4(%ebp)			# argument 1 (file descriptor)
	pushl $buffer			# buffer
	call read_record		# panggil fungsi read_record 
	addl $8, %esp			# hapus local variable dan set %esp ke
					# posisi awal sebelum loop.
	cmpl $RECORD_SIZE, %eax		# jika return value read_record 
					# tidak sama dengan ukuran RECORD_SIZE
	jne loop_end			# loncat ke loop_end
	jmp rubah_terbesar
# masukan ke buffer
loop:
	pushl -4(%ebp)			# argument 1 (file descriptor)
	pushl $buffer			# buffer
	call read_record		# panggil fungsi read_record 
	addl $8, %esp			# hapus local variable dan set %esp ke
					# posisi awal sebelum loop.
	cmpl $RECORD_SIZE, %eax		# jika return value read_record 
					# tidak sama dengan ukuran RECORD_SIZE
	jne loop_end			# loncat ke loop_end
	movl buffer + RECORD_AGE, %edx	# pindah angka umur ke %eax
	cmpl -8(%ebp), %edx		# bandinkan nilai yang berada di stack
					# dengan nilai yang ada di buffer
	jl rubah_terbesar		# loncat ke rubah_terbesar
	jmp loop
rubah_terbesar:
	movl buffer + RECORD_AGE, %edx
	movl %edx, -8(%ebp)		# rubah nilai terbesar
	jmp loop
loop_end:
	movl $SYS_CLOSE, %eax
	movl -4(%ebp), %ebx
	int $LINUX_SYSCALL

	movl $SYS_EXIT, %eax		# init exit systemcall
	movl -8(%ebp), %ebx		# return value
	int $LINUX_SYSCALL
