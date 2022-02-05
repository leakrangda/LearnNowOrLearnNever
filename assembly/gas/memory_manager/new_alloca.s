# PURPOSE: program to manage memory usage - allocates adn
#	and deallocates memory as requested
# NOTES: The programs using these routeines will ask 
#	for a certain size of memory. we actually 
#	use the beginning, before the pointer
#	at the beeginning, before the pointer
#	we hand back, we add as size field and
# 	an AVAILABLE/UNAVAILABLE marker. so, the 
# 	memory look like this:
# ##############################################################
# #Available Marker#Size of memory#Actual memory locations#
# ########################################################
#				   	 ^--Returned pointer
#				   points here
#	The pointer we return only point to the actual
#	locations requested to make it easer for the
# 	calling program. it also allows us tu change our
#	structure without the calling program having change
#	at all.

.section .data
######GLOBAL VARIABLES#######
heap_begin:
	.long 0

# this points to one location past hte memroy we are managing
current_break:
	.long 0
is_init:
	.long 0

#####STRUTRE INFORMATION#####
# sie of space for memory region header
.equ HEADER_SIZE, 8
# location of the "availabe" flag in the header
.equ HDR_AVAIL_OFFSET, 0
# location of the size of field in the header
.equ HDR_SIZE_OFFSET, 4

#################CONSTANTS################
.equ UNAVAILABLE, 0	# thi is the number we will use to mark
			# space that has been given out
.equ AVAILABLE, 1	# this is the number we will use to mark
			# space that has been returned, and is 
			# available for giving
.equ SYS_BRK, 45	# system call number for the break
			# system call
.equ LINUX_SYSCALL, 0x80# make system calls easier to read

.section .text

##############FUNCTIONS#############

##allocate_init##
#PURPOSE:	call this function to initialize
#		functions (spesifically, this sets heap_begin and
#		current_break). This has no parameters adn no
#		return value.

.globl allocate_init
.type allocate_init, @function
allocate_init:
	pushl %ebp		# standard function stuff
	movl %esp, %ebp

# if the brk system call is called with 0 in %ebx, it
# returns the last valid usable address
	movl $SYS_BRK, %eax	# find out where the break is
	movl $0, %ebx
	int $LINUX_SYSCALL

	incl %eax		# %eax now has the last valid 
				# address, and we want the memory
				# location after that 
	movl %eax, current_break# store the current break
	movl %eax, heap_begin	# store the current break as our
				# first address. this will cause
				# the allocate function to get 
				# memory from linux the first time
				# it it is run
	movl $1, is_init	# mark init state
	movl %ebp, %esp		# exit function
	popl %ebp
	ret
#######END OF FUNCTION########

##allocte###
# PURPOSE:	this function is used to grab a section of
#		memory. it check to see if there are any
#		free blocks, and, if not, it asks linux
#		for a new one.
# PARAMETERS:	this function has one parameter - the size
#		of the memory block that we want to allocate
# RETURN VALUE: This function returns the address of the 
#		allocated memory %eax. if there is no
#		memory avaliable, it will return 0 in %eax
#
######PROCESSING######
#
#	%ecx - hold the size of the requested memory
#		(first/only parameters)
#	%eax - current memory region being examined
#	%ebx - current break position
#	%edx - size of current memory region
#
# we scan thourgh each memory region starting with
# heap_begin. we look at the size of each one, and 
# if it has been allocated. if it's big enough for
# the requested size, and its available, it grabs that one.
# if it does not find a region large enough, it ask
# linux for more memory. in that case, it moved
# current_break up

.globl allocate
.type allocate, @function
.equ ST_MEM_SIZE, 8	# stack position of the memory size 
			# to allocate
allocate:
	pushl %ebp
	movl %esp, %ebp

	cmpl $0, is_init		# compare the bool, 
	jg mulai			# if 0 it doesnt initialize
	call allocate_init
mulai:
	movl ST_MEM_SIZE(%ebp), %ecx # %ecx will hold the size
			# we are looking for (which is the first 
			# and only parameter
	movl heap_begin, %eax		# %eax will hold the current
					# search location
	movl current_break, %ebx	# %ebx will hold the current
					# break
alloc_loop_begin:			# here iterate thorough each 
					# memory region.
	cmpl %ebx, %eax			# need more memory if this equal
	je move_break

	# grab the size of this memory
	movl HDR_SIZE_OFFSET(%eax), %edx
	# if the space is unavailable, go to the
	cmpl $UNAVAILABLE, HDR_AVAIL_OFFSET(%ebp)
	je next_location

	cmpl %edx, %ecx			# if the space available, compare
	jle allocate_here		# the size to the needed size. if its
					# big enough, go to allocate_here
next_location:
	addl $HEADER_SIZE, %eax		# the total size of memory 
	addl %edx, %eax			# region is the sum of the size
					# requested (currently stored
					# in %edx), plus another 8 bytes 
					# for the header, (4 for AVAILABLE/
					# UNAVAILABE flag, and 4 for the size
					# region). so adding, %edx and %8
					# to %eax will get the address 
					# of the next memory region.

	jmp alloc_loop_begin		# go look at next location
allocate_here:				# if we've made it here,
					# that means that the
					# region header or the region
					# to allocate is in %eax
# mark space as unavailable
	movl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
	addl $HEADER_SIZE, %eax		# move %eax past the header to
					# the usable memory (since 
					# tha't what we return.
	movl %ebp, %esp			# return from the function
	popl %ebp
	ret
move_break:				# if we've made it here, that
					# measn that we have exhausted
					# all addressable memory, and 
					# we need to ask for more.
					# %ebx holds the current
					# endpoint of the data, 
					# and %ecx hold its size
					# we need to increase %ebx, to where
					# we want _want_ memory to end, so we
	addl $HEADER_SIZE, %ebx		# add space for the headers structure
	addl %ecx, %ebx			# add space to the break for 
					# the data requested

					# noe its time to as linux
					# for more memory
	
	pushl %eax			#save needed registers
	pushl %ecx
	pushl %ebx

	movl $SYS_BRK, %eax		# reset the break(%ebx has the 
					# requested break point
	int $LINUX_SYSCALL
		# under normal condiiton, this should return the new break in %eax
		# which will be either 0 if it fails, or it will be equal to or
		# larger than we asked for. we don't care in this program where
		# it acctually sets the break, so as long as %eax isn't 0, we don't
		# care what it is

	cmpl $0, %eax			# check for error conditions
	je error
	
	popl %ebx			# restore saved registers
	popl %ecx
	popl %eax

	# set this memory as unavailable, since we're about to give it away.
	movl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
	# set the size of the memory
	movl %ecx, HDR_SIZE_OFFSET(%eax)

	# move %eax to actual start of usable memory.
	# %eax now holds the return value
	addl $HEADER_SIZE, %eax

	movl %ebx, current_break	# save the new break
	movl %ebp, %esp			# return function
	popl %ebp
	ret
error:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
##########END OF FUNCTION###########

###DEALLOCATE###
# PURPOSE :
#	The purpose of this function is to give back
# 	a region of memory to the pool after we're done
#	using it.
# PARAMETER: 
#	The only parameter is the address of the memory
#	we want to return to the memory pool.
#
# RETURN VALUE:
#	There is no return value
# PROCESSING:
#	if you remember, we actually hand the program
#	start of the memory that they can use, which is
#	8 storage location after the actual start of the memory region.
#	all we have to do is go back 8 locations and mark that memory as available,
#	so that the allocate function knows it can use it.
.globl deallocate
.type dealllocate, @function
# stack position of the memory region to free

.equ ST_MEMORY_SEG, 4
deallocate:
	# since the function is so simple, we dont need any of the fancy function
	# stuff.

	# get the address of the memory to free (normally this is 8(%ebp), but
	# but since we didn't push %ebp or move %esp to %ebp we cn just do 4(%esp)

	movl ST_MEMORY_SEG(%esp), %eax
	# get the pointer to the real beginning of the memory

	subl $HEADER_SIZE, %eax
	# mark it as available
	movl $AVAILABLE, HDR_AVAIL_OFFSET(%eax)

	# return
	ret
##########END OF FUNCTION##########

