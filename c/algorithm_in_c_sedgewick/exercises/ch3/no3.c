/*exchange-_-stack*/

#include "list.h"

void exchange(LIST *t,LIST *u)
{
	LIST *temp;

	temp=t->next;
	t->next=u->next;
	u->next=temp;
}
	
