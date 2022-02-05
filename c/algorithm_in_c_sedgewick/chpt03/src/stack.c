/*elementary data structure_stack*/

/*data structure*/
#include <stdio.h>
#include <stdlib.h>
#include "../header/stack.h"

static STACK *z,*head,*t;

void stackinit(void)
{
	head=(STACK *)malloc(sizeof (STACK));
	z=(STACK *)malloc(sizeof (STACK));
	head->next=z;
	head->key=0;
	z->next=z;
}
void push(int v)
{
	t=(STACK *)malloc(sizeof(STACK));
	t->key=v;
	t->next=head->next;
	head->next=t;
}
int pop(void)
{
	int x;
	t=head->next;
	head->next=t->next;
	x=t->key;
	free(t);
	return x;
}
int stackempty()
{
	return head->next==z;
}
