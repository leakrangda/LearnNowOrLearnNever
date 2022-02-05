#include "../include/k_r-function.h"
#include <stdio.h>
#include <stdlib.h>		/* for atof */
#include <string.h>

#define MAXOP	100		/* max size of operand */
#define NUMBER '0'		/* signal that a number was found */ 
#define COMMAND 'C'
int main(int argc, char *argv[]){
	char c;
	double op1;
	char s[MAXOP];
	int verbose = 0;
	if(argc >=2)
		if(!strcmp(argv[1], "-v"))
				verbose = 1;
	while((c = getopt_o(s)) != EOF){
		if(verbose)
			printf("opt = %s, type = %c\n",s,c);
		switch(c){
			case NUMBER:
				push(atof(s));
				break;
			case COMMAND:
				cmd(iscommand(s));
				break;
			case '+':
				push(pop() + pop());
				break;
			case '-':
				op1 = pop();
				push(pop() - op1); 
				break;
			case '*':
				push(pop() * pop());
				break;
			case '/':
				op1 = pop();
				if(op1 == 0)
					printf("Error: divide by 0");
				else
					push(pop() / op1); 
				break;
			case '%':
				op1 = pop();
				if(op1 == 0)
				       printf("Error: modulo by 0");
				else
					push((int)pop() % (int)op1);
				break;
		}
	}
	ppop();
	return 0;
}
