#include <termios.h>
#include <stdio.h>
#include <stdlib.h>

#define PASSWORD_LEN	8

int main(){
	/*for saving current and modified termios structure*/
	struct termios initialrsettings, newrsettings;
	/*the char array of the password*/
	char password[PASSWORD_LEN + 1];

	/*get current setting termios, and save it*/
	tcgetattr(fileno(stdin), &initialrsettings);
	/*copy current termios to newrsettings*/
	newrsettings = initialrsettings;
	/*alter the c_lflag and invert the echo*/
	newrsettings.c_lflag &= ~ECHO;
	/*ask for user password*/
	printf("Enter password: ");
	/*set the altered termios*/
	if(tcsetattr(fileno(stdin),TCSAFLUSH,&newrsettings) != 0)
		/*print error if it failed*/
		fprintf(stderr, "could not set attribute\n");
	else{
		/*get the password from stdin*/
		fgets(password, PASSWORD_LEN, stdin);
		/*reset former termios setting*/
		tcsetattr(fileno(stdin), TCSANOW, &initialrsettings);
		/*print the password that user has been inputted*/
		fprintf(stdout, "\nyou entered %s\n", password);
	}
	/*exit the program*/
	exit(EXIT_SUCCESS);
}
