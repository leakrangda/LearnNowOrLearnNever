/*elementary data structure_stack*/

/*data structure*/
#include <stdio.h>
#include <stdlib.h>
#include "../header/bintree_stack.h"
BSTACK *TAIL, *HEAD, *TEMP;

void stackinit(void)
{
	HEAD=(BSTACK *)malloc(sizeof (BSTACK));
	TAIL=(BSTACK *)malloc(sizeof (BSTACK));
	HEAD->next=TAIL;
	HEAD->node=NULL;
	TAIL->next=TAIL;
}
void push(BTREE *btree)
{
	TEMP=(BSTACK *)malloc(sizeof(BSTACK));
	TEMP->node=btree;
	TEMP->next=HEAD->next;
	HEAD->next=TEMP;
}
BTREE *pop(void)
{
	BTREE *temp;

	TEMP=HEAD->next;
	HEAD->next=TEMP->next;
	temp=TEMP->node;
	free(TEMP);
	return temp;
}
int stackempty()
{
	return HEAD->next==TAIL;
}
