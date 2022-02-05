#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <termios.h>
#include <term.h>
#include <curses.h>

static FILE *output_stream = (FILE*)0;
char *menu[] = {
	"a - add new record",
	"d - delete record",
	"q - quit",
	NULL,
};

/*function declaration*/
int getchoice(char *greet, char *choices[], FILE *in, FILE *out);
int char_to_terminal(int char_to_write);
int main(){
	int choice = 0;
	FILE *input;
	FILE *output;
	struct termios initial_settings, new_settings;

	/*is stdout connected to terminal?*/
	if(!isatty(fileno(stdout))){
		/*if not, print error message*/
		fprintf(stderr, "you are not a terminal!\n");
	}
	/*open tty for reading*/
	input = fopen("/dev/tty", "r");
	/*open tty for writting*/
	output = fopen("/dev/tty", "w");
	/*check input and output, is it ok?*/
	if(!input || !output){
		/*if it is no, print error message*/
		fprintf(stderr, "unable to open /dev/tty\n");
		/*and then exit the program*/
		exit(EXIT_FAILURE);
	}
	/*get current termios settings*/
	tcgetattr(fileno(input), &initial_settings);
	/*copy the current setting to struct termios new_setting variable*/
	new_settings = initial_settings;
	/*alter ICANON flag*/
	new_settings.c_lflag &= ~ICANON;
	/*alter ECHO flag*/
	new_settings.c_lflag &= ~ECHO;
	/*set the VMIN value to 1*/
	new_settings.c_cc[VMIN] = 1;
	/*set the VTIME value to 0*/
	new_settings.c_cc[VTIME] = 0;
	/*alter the ISIG, for disabling the signal*/
	new_settings.c_lflag &= ~ISIG;
	/*set the new termios setting and check it*/
	if(tcsetattr(fileno(input), TCSANOW, &new_settings) != 0)
		/*if it error, then print the message*/
		fprintf(stderr, "could not set attribute\n");
	do{
		choice = getchoice("please select an action", menu,input,output);
		printf("you have chosen: %c\n", choice);
		sleep(1);
	}while(choice != 'q');
	/*set to the initial termios settings*/
	tcsetattr(fileno(input), TCSANOW, &initial_settings);
	exit(EXIT_SUCCESS);
}

int getchoice(char *greet, char *choices[], FILE *in, FILE *out){
	int chosen = 0;
	int selected;
	int screenrow, screencol = 10;

	char **option;
	char *cursor, *clear;

	output_stream = out;

	setupterm(NULL, fileno(out), (int *)0);
	cursor = tigetstr("cup");
	clear = tigetstr("clear");

	screenrow = 4;
	tputs(clear, 1, char_to_terminal);
	tputs(tparm(cursor, screenrow, screencol), 1, char_to_terminal);
	fprintf(out, "Choice: %s", greet);
	screenrow += 2;
	option = choices;
	while(*option){
		tputs(tparm(cursor, screenrow, screencol), 1, char_to_terminal);
		fprintf(out, "%s", *option);
		screenrow++;
		option++;
	}
	fprintf(out, "\n");

	do{
		fflush(out);
		selected = fgetc(in);
		option = choices;
		while(*option){
			if(selected == *option[0]){
				chosen = 1;
				break;
			}
			option++;
		}
		if(!chosen){
			tputs(tparm(cursor, screenrow, 
						screencol), 1, char_to_terminal);
			fprintf(out, "incorrect choice, select again\n");
		}
	}while(!chosen);
	tputs(clear, 1, char_to_terminal);
	return selected;
}
int char_to_terminal(int char_to_write){
	if(output_stream)putc(char_to_write, output_stream);
	return 0;
}
