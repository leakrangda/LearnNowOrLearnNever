/* strindex(s, c): return the position of thre rightmost occurance of c in s */
#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <math.h>
#include "../include/k_r-function.h"

#define MAXVAL 100
#define BUFSIZE 100
#define NUMBER '0'
#define MAXVAR	26
#define SIN	1
#define COS	2
#define EXP	3
#define POW	4
#define NONE	'N'
#define COMMAND 'C'
#define VAR	'V'

float variable[26];
char buf[BUFSIZE];
int bufp = 0;
int sp = 0;
int top_var=0;
double val[MAXVAL];		/* for calculator stack */
double var[MAXVAR];		/* for variable stack */
char *command[] = {
	"sin",
	"cos",
	"exp",
	"pow",
	NULL
};

int strindex(char s[], char c){
	int i;
	int find=-1;
	
	for(i = 0; s[i] !='\0'; i++)
		if(s[i] == c)
			find=i;
	return find;
}

/* atof_i(s): return floating-point number with scientific notation */
double atof_i(char s[]){
	double val, power, e_power;
	int i;
	int j;
	int sign, e;

	for(i=0; isspace(s[i]); i++);		/* skip blank space */
	sign = (s[i] == '-') ? -1 : 1;		/* set sign */
	if(s[i] == '+' || s[i] == '-')		/* skip sign if any */
		i++;
	for(val = 0.0; isdigit(s[i]); i++)	/* check the digit */
		val = 10.0 * val + (s[i] - '0');/* convert the string to float */
	if(s[i] == '.')
		i++;
	for(power = 1.0; isdigit(s[i]); i++){
		val = 10.0 * val + (s[i] - '0');
		power *= 10;
	}
	if(tolower(s[i]) == 'e'){
		i++;
		e_power = 1.0;
		e = (s[i] == '-') ? -1 : 1;
		if(s[i] == '-' || s[i] == '+')
			i++;
		for(j = 0; j < s[i] - '0'; j++)
			e_power *= 10.0  ;
	}
	else{
		e = (s[i] == '-') ? -1 : 1;
		e_power = 0.0;
	}

	power = ( e == -1) ? power + e_power : power - e_power;
	return (power > 0) ? sign * val / power : sign * val * -power;
}

/*push(d): push d to stack */
void push(double d){
	if(sp < MAXVAL)
		val[sp++] = d;
	else
		printf("Erro: stack full, can't push %g\n", d);
}

/* pop(): pop the stack and return it */
double pop(){
	if(sp > 0)
		return val[--sp];
	else{
		printf("Error: stack empty\n");
		return 0.0;
	}
}

/* getopt(): get next character or numeric operand */
int getopt(char s[]){
	int i, c;
	while ((s[0]= c = getch()) == ' ' || c == '\t')
		;
	s[1] = '\0';
	if(!isdigit(c) && c != '.')
		return c;
	i = 0;
	if(isdigit(c))
		while(isdigit(s[++i] = c = getch()))
			;
	if(c == '.')
		while(isdigit(s[++i] = c = getch()))
			;
	s[i] = '\0';
	if(c != EOF)
		ungetch(c);
	return NUMBER;
}

/* getch(): get a (posibble pushed-back) character */
int getch(){
	return (bufp > 0) ? buf[--bufp] : getchar();
}

/* ungetch(): push character back on input buffer */
void ungetch(int c){
	if(bufp >= BUFSIZE)
		printf("ungetch: too many characters\n");
	else
		buf[bufp++] = c;
}

/* ppop(): print the topmost stack value without poping it */
void ppop(){
	if(sp == 0)
		return;
	printf("%f\n",val[sp - 1]);
}

/* dupp(): duplicate the topmost stack value */
void dup(){
	float a = pop();
	push(a);
	push(a);
}

/* swapp(): swapping the two topmost stack value */
void swapp(){
	double op1 = pop();
	double op2 = pop();
	
	push(op1);
	push(op2);
}

/* remember(c): get the value from variable c */
double remember(char c){
	if(top_var < (tolower(c) - 'a')){
		printf("error: %c variable doesn't exist\n", c);
		return 0.0;
	}
	else
		return var[tolower(c) -'a'];
}

/* p_member(double n): add n to variable stack */
void p_member(double n){
	if(top_var == MAXVAR)
		printf("error: variable is full\n");
	else
		var[top_var++] = n;
}

/* member_p(): return the top value from variable stack */
double member_p(){
	if(top_var == 0)
		printf("error: varialbe is empty\n");
	else
		return var[--top_var];
	return 0.0;
}
/* another type of taking option - return 0 for number, 1 > for command, and character for other type of input */
int getopt_o(char *str){
	char *string = str;
	/* clearing whitespaces */
	int huruf;
	while(isspace(huruf = getch()))
		;

	/* operand */
	if(!isalnum(huruf))
		return huruf;

	/* if number */
	if(isdigit(huruf)){
		*string++ = huruf;
		while(isdigit(*string++ = huruf = getch()))
			;
		if(huruf  == '.')
			while(isdigit(*string++ = huruf = getch()))
				;
		else		
			ungetch(huruf);
		*--string = '\0';
		return NUMBER;
	}

	/* if command/word */
	if(isalpha(huruf)){
		*string++ = huruf;	
		while(isalpha(*string++ = huruf = getch()))
			;
		*--string = '\0';
		ungetch(huruf);
		return COMMAND;
	}

	/* if EOF */
	if(huruf == EOF){
		return EOF;
	}
	else
		return 0;
}
/* checking for command */
int iscommand(char *string){
	char **str = command;
	while(*str != NULL){
		if(!strcmp(*str, string))
			return str - command + 1;
		str++;
	}
	return 0;
}
/* execute the command appropriately */
void cmd(int operasi){
	switch(operasi){
		case SIN:
			push(sin(pop()));
			break;
		case COS:
			push(cos(pop()));
			break;
		case EXP:
			push(pow(pop(), pop()));
			break;
		case VAR:

		default:
			fprintf(stderr, "\nnot a command\n");
			break;
	}
}

/* identify the variable a - z-with finite state automata*/
int is_var(char *string){
	return var_node_0(string);
}
int var_node_0(char *string){
	int result;

	if(*string == '$')
		result = var_node_1(++string);		//variable
	else
		result = var_node_2(++string);		//bukan variable
	return result;
}
int var_node_1(char *string){
	int result;
	if(isalpha(*string))
		result=var_node_3(++string);
	else
		result=0;
	return result;
}
int var_node_2(char *string){
	return 0;
}
int var_node_3(char *string){
	if(*string == '\0')
		return 1;
	else
		return var_node_2(++string);
}
