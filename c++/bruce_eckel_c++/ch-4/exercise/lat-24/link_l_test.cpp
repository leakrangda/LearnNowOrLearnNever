#include <iostream>
#include "link_l.h"

using namespace std;
int main()
{
	int size=10;
	Link_list *head;
	head=new Link_list;
	//isi!
	fill(head,size);
	//keluar!
	show(head);
}
