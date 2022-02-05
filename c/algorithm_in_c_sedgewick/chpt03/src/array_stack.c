#include "array_stack.h"

static int stack[MAX + 1],p;

push(int v){
	stack[p++] = v;
}
int pop(){
	return stack[--p];
}
stackinit(){
	p = 0;
}
int stackempty(){
	return !p;
}

