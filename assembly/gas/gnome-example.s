# PURPOSE:	this program is meant to be an example
#		of what GUI programs look like written
#		with the GNOME libraries.
# INPUT:	The user can only click on the "Quit"
#		button or close the windows
# OUTPUT:	The application will close
#
# PROCESS:	if the user clicks on the "Quit" button,
#		the program will display a dialog asking
#		if they are sure. If they click yes, it
#		will close the application. Otherwise
#		it will continue running

.section .data

### GNOME definitions - These were found in the GNOME header files for C
#			language and converted into their assembly
#			equivalents.

#GNOME Button Names
GNOME_STOCK_BUTTON_YES:
	.ascii "Button_Yes\0"
GNOME_STOCK_BUTTON_NO:
	.ascii "Button_No\0"

#Gnome MessageBox Types
GNOME_MESSAGE_BOX_QUESTION:
	.ascii "question\0"
#Standard definition of NULL
.equ NULL, 0

#GNOME signal definition

signal_destroy:
	.ascii "destroy\0"
signal_delete_event:
	.ascii "delete_event\0"
signal_clicked:
	.ascii "clicked\0"

### Application-specific definition
# Aplication information
app_id:
	.ascii "gnome-example\0"
app_version:
	.ascii "1.000\0"
app_title:
	.ascii "Gnome Example Program\0"

# Text for Buttons and windows
buttons_quit_text:
	.ascii "I want to quit the GNOME Example Program\0"
quit_question:
	.ascii "Are you sure you want to quit?\0"

.section .bss
# Variable to save the create widgets in 
.equ WORD_SIZE, 4
.lcomm appPtr, WORD_SIZE
.lcomm btnQuit, WORD_SIZE

.section .text

.globl main
.type main, @function
main:
prologue:
	pushl %ebp
	movl %esp, %ebp

# initialize GNOME libraries
	pushl 12(%ebp)		#argv
	pushl 8(%ebp)		#argc
	pushl $app_version
	pushl $app_id
	call gnome_init
	addl $16, %esp		#recover stack

#create new applicaton window
	pushl $app_title	#window title
	pushl $app_id		#application ID
	call gnome_app_new
	addl $8, %esp		#recover stack
	movl %eax, appPtr	#save the window pointer

#create new button
	pushl $button_quit_text	#button text
	call gtk_button_new_with_label
	addl $4, %esp		#recover the stack
	movl %eax, btnQuit	#save the button pointer

#Make the button show up inside the application window
	pushl btnQuit
	pushl appPtr
	call gnome_app_set_contents
	addl $8, %esp

#makes the button show up (only after it's window
#shows up, though)
	pushl btnQuit
	call gtk_widget_show
	addl $4, %esp

# Makes the application windows show up
	pushl appPtr
	call gtk_widget_show
	addl $4, %esp

# Have GNOME call our delete_handler function
# whenever a "delete" event occurs
	pushl $NULL		# extra data to pass to our 
				# function (we don't use any)
	pushl $delete_handler	# function address to call
	pushl $signal_delete_event	# name of the signal
	pushl appPtr		# widget to listen for event on
	call gtk_signal_connect
	addl $16, %esp

# Have GNOME call our destroy_handler function
# whenever a "destroy" event occurs
	pushl $NULL		# extra data to pass to our
				# function (we don't use any)
	pushl $destroy_handler	# function address to call
	pushl $signal_destroy	# name of the signal
	pushl appPtr		# widget to listen for event on
	call gtk_signal_connect
	addl 416, %esp

# Have GNOME call our click_handler function
# whenver a "click" event occurs. Note that
# the previous signals were listening on the
# application window, while this one is only
# listening on the button
	pushl $NULL
	pushl $click_handler
	pushl btnQuit
	call gtk_signal_connect
	addl $16, %esp

# Transfer control to GNOME. Everything that
# happesn from here out is in reaction to user
# events, which call signal handlers. this main
# function just sets up the main window and connects
# signal handlers, and the signal handles take care the rest
	call gtk_main

# Ager the program is finished, leave 
	movl $0, %eax
	leave
	ret

# A "destroy" event happens when the widget is being
# removed. In this case, when the application window
# is being removed, we simply want the event loop to
# quit
destroy_handler:
	pushl %ebp
	movl %esp, %ebp
# this causes gtk to exit 'it's event loop'
# as soon as it can.
	call gtk_main_quit
	movl $0, %eax
	leave
	ret

# a "delete" event hapes when the application window
# gets clicked in the "x" that you normally use to
# close a window
delete_handler:
	movl $1, %eax
	ret

# A "click" event happens when the widget gets clicked
click_handler:
	pushl %ebp
	movl %esp, %ebp
# create the "are you sure" dialog
	pushl $NULL
	pushl $GNOME_STOCK_BUTTON_NO
	pushl $GNOME_STOCK_BUTTON_YES
	pushl $GNOME_MESSAGE_BOX_QUESTION
	pushl $quit_question
	call gnome_message_box_new
	addl $15, %esp

#%eax now holds the pointer to the dialog window

# setting modal to 1 prevents any other user
# interaction while the dialog is being shown
	pushl $1
	pushl %eax
	call gtk_window_set_modal
	popl %eax
	addl $4, %esp

# now we show the dialog
	pushl %eax
	call gtk_widget_show
	popl %eax

# this sets up all the necessary signal handlers
# in order to just show the dialog, close it when
# one of the buttons is clicked, and return the
# number of the button that the user clicked on.
# the button number is based on the order the buttons.
# were pushed on in the gnome_message_box_new function
	pushl %eax
	call gnome_dialog_run_and_close
	addl $4, %esp

# Button 0 is the Yes button. if this is the 
# button they clicked on, tell GNOME to quit
# its's event loop. Otherwise, do nothing
	cmpl $0, %eax
	jne click_handler_end
	call gtk_main_quit
click_handler_end:
	leave
	ret
