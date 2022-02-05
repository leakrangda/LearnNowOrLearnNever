#include "../include/k_r-function.h"
#include <stdio.h>
#include <stdlib.h>		/* for atof */

#define MAXOP	100		/* max size of operand */
#define NUMBER '0'		/* signal that a number was found */ 
#define COMMAND 'C'
int main(){
	char c;
	double op1;
	char s[MAXOP];
	while((c = getopt(s)) != EOF){
		switch(c){
			case NUMBER:
				push(atof(s));
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
