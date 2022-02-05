#include <stdio.h>
#include <stdlib.h>
#include "node.h"

int main(void)
{
	int counter=5;
	ND *tail;
	ND *head;

	head=make_node(0,NULL);
	tail=head;
	while(counter--){
		int temp;

		printf("%d:",counter);
		scanf("%d",&temp);
		tail=make_node(temp,tail);
	}
	printf("hasil:\n");
	while(tail->next!=NULL){
		printf("%d\n",tail->info);
		tail=tail->next;
	}
	return 0;
}
		
