#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <termios.h>

char *menu[] = {
	"a - add new record",
	"d - delete record",
	"q - quit",
	NULL,
};
/*function declaration*/
int getchoice(char *greet, char *choices[], FILE *in, FILE *out);

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
	}while(choice != 'q');
	/*set to the initial termios settings*/
	tcsetattr(fileno(input), TCSANOW, &initial_settings);
	exit(EXIT_SUCCESS);
}

int getchoice(char *greet, char *choices[], FILE *in, FILE *out){
	int chosen = 0;
	int selected;
	char **option;
	
	do{
		fprintf(out,"choice: %s\n", greet);
		option = choices;
		while(*option){
			fprintf(out,"%s\n", *option);
			option++;
		}
		do{
			selected = fgetc(in);
		/*check for carriage return and line feed character*/
		}while(selected=='\n' || selected=='\r');
		option = choices;
		while(*option){
			if(selected == *option[0]){
				chosen = 1;
				break;
			}
			option++;
		}
		if(!chosen){
			fprintf(out,"incorrect choice, select again\n");
		}
	}while(!chosen);
	return selected;
}
