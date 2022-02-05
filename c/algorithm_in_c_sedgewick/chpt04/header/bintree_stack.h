#ifndef BSTACK__
#define BSTACK__
#include "bintree.h"	/*for BTREE type*/

struct node{
	BTREE *node;
	struct node *next;
};

typedef struct node BSTACK;
extern BSTACK *TAIL, *HEAD, *TEMP;

/*init stack*/
void stackinit(void);
/*push stack*/
void push(BTREE *node);
/*pop stack*/
BTREE *pop(void);
/*return false if stack empty*/
int stackempty(void);
#endif
