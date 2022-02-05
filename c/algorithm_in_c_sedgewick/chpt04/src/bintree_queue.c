#include <stdio.> 
#include <stdlib.h> 
#include "../header/bintree.h" 
#define MIN	100 

extern static BTREE *head,*tail;
/*inisialiasi queue pertama*/
void initqueue()
{
	head=(BTREE *)malloc(sizeof(BTREE));
	head->next=NULL;
	head->info=0;
	tail=head;
}
/*put the value on*/
void put(int value)
{
	BTREE *temp;
	
	temp=(BTREE *)malloc(sizeof(BTREE));
	temp->next=NULL;
	temp->info=value;
	tail->next=temp;
	tail=temp;
}
/*get the value off*/
int get()
{
	int temp;
	BTREE *sementara;

	temp=head->info;
	sementara=head;
	head=head->next;
	free(sementara);
	return temp;
}
/*get the length of the queue*/
int getlen()
{
	int temp=0;
	BTREE *sementara;

	sementara=head;
	while(sementara->next!=NULL){
		temp++;
		sementara=sementara->next;
	}
	return temp;
}
/*check the queue, empty or not*/
int check_queue()
{
	if(head!=NULL && tail!=NULL)
		return 0;
	return 1;
}
