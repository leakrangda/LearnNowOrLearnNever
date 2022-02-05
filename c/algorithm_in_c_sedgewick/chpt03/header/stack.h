#ifndef STACK__
#define STACK__

struct node{
	int key;
	struct node *next;
};

typedef struct node STACK;

/*init stack*/
void stackinit(void);
/*push stack*/
void push(int);
/*pop stack*/
int pop(void);
/*return false if stack empty*/
int stackempty(void);
#endif
