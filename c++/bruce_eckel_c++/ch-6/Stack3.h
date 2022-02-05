//stack.h
//nested struck in linked list
#include "../require.h"
#ifndef STACK3_H
#define STACK3_H

struct Stack{
	struct Link{
		void* data;
		Link* next;
		Link(void *dat, Link* nxt);
		~Link();
	}* head;
	Stack();
	~Stack();
	void push(void* dat);
	void* peek();
	void* pop();
};
#endif	//STACK3_H//

