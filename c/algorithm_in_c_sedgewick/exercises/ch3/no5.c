//for double linked list
/*dengan assumsi:
 * 	head=awal linkedlist
 * 	tail=akhir linkdedlist
 * 	list=datatipe linked list
 * 	key=data yang disimpan
 */

void insert(list* node, int key){
	list* temp=head;
	while(temp->next!=tail){
		if(temp==node){
			list* temp=node->next;
			node->next=(list*)malloc(sizeof(list));
			node->next->key=key;
			node->next->next=temp;
			return;
		}
		temp=temp->next;
	}
	list* temp=node->next;
	node->next=(list*)malloc(sizeof(list));
	node->next->key=key;
	node->next->next=temp;
}
void delete(list* node){
	list* temp=head;
	while(temp->next!=NULL){
		if(temp->next==node){
			temp->next=node->next;
			free(node);
			return;
		}
		temp=temp->next;
	}	
	return
}
