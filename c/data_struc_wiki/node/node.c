#include "node.h"

/*ND type*/
ND *make_node(int v, ND *next)
{
	ND *temp=NULL;

	if((temp=(ND *)malloc(sizeof(ND)))==NULL){
		fprintf(stderr,"error alocating.\n");
		exit(1);
	}
	temp->info=v;
	temp->next=next;

	return temp;
}
/*getter*/
int get_value(ND *node)
{
	return node->info;
}
/*getter_next*/
ND *get_next(ND *node)
{
	if(node->next)
		return node->next;
	else{
		fprintf(stderr,"error null pointer.\n");
		exit(1);
	}
}
/*setter_set value for given ND*/
void set_value(ND *node,int nilai)
{
	node->info=nilai;
}

