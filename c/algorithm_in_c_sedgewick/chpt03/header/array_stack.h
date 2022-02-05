#ifndef __ARRAY_STACK
#define __ARRAY_STACK
#ifdef MAX
#undef MAX
#define MAX 100

static stack[MAX + 1],p;

push(int v);
int pop();
stackinit();
int stackempty();
#endif
