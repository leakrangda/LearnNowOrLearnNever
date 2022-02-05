#include "array_queue.h"

void put(int v){
	queue[tail++] = v;
	if(tail > MAX) tail = 0;
}
int get(){
	int t = queue[head++];
	if(head > MAX) head = 0;
	return t;
}
void queueinit(){
	head = 0;
	tail = 0;
}
int queueempty(){
	return head == tail;
}
