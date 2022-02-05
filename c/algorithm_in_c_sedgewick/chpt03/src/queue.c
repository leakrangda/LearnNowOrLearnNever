#include "../header/queue.h"
#include "../header/list.h"

void queueinit(){
	listinit();
}
void put(int value){
	LIST* TEMP=HEAD;
	while(TEMP->next!=END)
		TEMP=TEMP->next;
	insertafter(TEMP, value);
}
int get(){
	int TEMP;
	LIST* sementara;
	if(emptyqueue())
		return -1;
	TEMP=HEAD->next->key;
	deleteafter(HEAD);
	return TEMP;
}
int emptyqueue(){
	return listempty();
}
