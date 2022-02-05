#ifndef __ARRAY_QUEUE__
#define __ARRAY_QUEUE__
#ifdef MAX
#undef MAX
#endif
#define MAX 100

static int queue[MAX + 1], head, tail;
void put(int v);
int get();
void queueinit();
int queuempty();

#endif
