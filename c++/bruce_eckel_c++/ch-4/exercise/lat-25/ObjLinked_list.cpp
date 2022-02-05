#include "ObjLinked_list.h"
#include <iostream>

void Link_list::fill(Link_list *ptr, int size)
{
	//Link_list *temp=ptr;
	for(int i=0;i < size;i++){
		Link_list *nxt=new Link_list;
		ptr->next=nxt;
		ptr->num=i;
		ptr=ptr->next;
		ptr->next=0;
	}
}
void Link_list::show(Link_list *head)
{
	while(head->next!=0){
		std::cout<<"list ["<<head->num<<"]="<<head<<std::endl;
		head=head->next;
	}
}
