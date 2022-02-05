//stack.cpp{0}
//linked list with nesting
#include "Stack3.h"
#include <iostream>
using namespace std;

Stack::Link::Link(void* dat, Link* nxt){
	data=dat;
	next=nxt;
}
Stack::Stack(){head = 0;}
Stack::Stack(void* dat[], int size){
	int i=0;
	while(i < size){
		cout<<"pushed address="<<dat[i]<<endl;
		this->push((unsigned long*)dat[i++]);
	}
}
Stack::Link::~Link(){}
void Stack::push(void* dat){
	head=new Link(dat, head);
}
void* Stack::peek(){
	require(head !=0, "Stack empty");
	return head->data;
}
void* Stack::pop(){
	if(head==0)return 0;
	void* result=head->data;
	Link* oldHead=head;
	head=head->next;
	delete oldHead;
	return result;
}
Stack::~Stack(){
	require((head==0), "stack not empty.");
}
