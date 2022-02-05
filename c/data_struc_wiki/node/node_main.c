#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "node.h"

int max_number(int a, int b)
{
	return a > b?a:b;
}
int main(void)
{
	FILE *file;
	char name[20];
	int max=0;
	int sum=0;
	int total=0;
	int count=0;
	int number;
	ND *head;
	ND *tail;

	
	head=make_node(0,NULL);
	tail=head;
	printf("file:");

	/*fgets(name,20,stdin);
	name[strlen(name)-1]=0;*/
	
	file=fopen("coba.txt","r");
	if(file==NULL)
		exit(1);
	/*first part_taking the integer number with file text type*/
	while(!feof(file)){
		fscanf(file,"%d\n",&number);
		tail=make_node(number,tail);
		max=max_number(max,number);
	}
	fclose(file);
	while(tail->next != NULL){
		int j=get_value(tail);
		ND *sementara;
		if(max % j ==0){
			total+=j;
			count++;
		}
		sementara=tail->next;
		free(tail);
		tail=sementara;
	}
	if(count)printf("the average: %d\n",total/count);
}
