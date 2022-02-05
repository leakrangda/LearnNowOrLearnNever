#include <iostream>
#include "ObjLinked_list.h"

using namespace std;
int main()
{
	int size=10;
	Link_list *head;
	head=new Link_list;
	//isi!
	head->fill(head,size);
	//keluar!
	head->show(head);
}
