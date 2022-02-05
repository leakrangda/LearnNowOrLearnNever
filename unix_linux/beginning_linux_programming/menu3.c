#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

char *menu[] = {
	"a - add new record",
	"d - delete record",
	"q - quit",
	NULL,
};
int getchoice(char *greet, char *choices[], FILE *in, FILE *out);

int main(){
	int choice = 0;
	FILE *input;
	FILE *output;

	if(!isatty(fileno(stdout))){
		fprintf(stderr, "you are not a terminal!\n");
	}
	input = fopen("/dev/tty", "r");
	output = fopen("/dev/tty", "w");
	if(!input || !output){
		fprintf(stderr, "unable to open /dev/tty\n");
		exit(EXIT_FAILURE);
	}
	do{
		choice = getchoice("please select an action", menu,input,output);
		printf("you have chosen: %c\n", choice);
	}while(choice != 'q');
	exit(EXIT_FAILURE);
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
		}while(selected=='\n');
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
