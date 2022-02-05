.section .data
firststring:
	.ascii "hello! %s is a %s who loves the number %d\n\0"
name:
	.ascii "jonathan\0"
personstring:
	.ascii "person\0"
numberloved:
	.long 3
.section .text
.globl _start
_start:

pushl numberloved		# this is the %d
pushl $personstring		# this is the second %s
pushl $name			# this is th first %s
pushl $firststring		# this is the format string
				# in the prototype
call printf
pushl $0
call exit
