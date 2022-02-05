/*move next to front-_-stack*/
#include <stdio.h>
#include "list.h"

int move_next_to_front(LIST *t)
{
	int ret;
	LIST *temp=t->next;
	
	if(temp==z)
		ret=0;
	else{
		t->next=t->next->next;
		temp->next=head->next;
		head->next=temp;
		ret = 1;
	}
	return ret;
}

