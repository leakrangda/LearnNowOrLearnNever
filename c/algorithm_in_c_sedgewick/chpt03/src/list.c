/*elementary data structure_list*/

/*data structure*/
#include <stdlib.h>
#include "../header/list.h"

void listinit(void)
{
	HEAD=(LIST *)malloc(sizeof(LIST));
	END=(LIST *)malloc(sizeof(LIST));
	HEAD->next=END;
	HEAD->key=0;
	END->key=0;
	END->next=END;
}
void insertafter(LIST* t, int value)
{
	LIST* TEMP=(LIST *)malloc(sizeof(LIST));
	TEMP->next=t->next;
	t->next=TEMP;
	TEMP->key=value;
}
int deleteafter(LIST* t)
{
	LIST *TEMP=t->next;
	t->next=TEMP->next;
	free(TEMP);
}
int listempty()
{
	/*1 if empty, 0 if not*/
	return HEAD->next==END;
}

