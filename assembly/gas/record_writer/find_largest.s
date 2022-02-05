.include "records.def"

.section .text
.globl _cari, @function
_cari:
	pushl %ebp
	movl %esp,%ebp
	
	# buat ruangan untuk local variable	
	subl $4, %esp

	# baca angkanya
	movl 4(%ebp), %edi
	
	movl %edi,%eax
	cmpl RECORD_AGE(%edi)
