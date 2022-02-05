#include <stdio.h>
#include <stdlib.h>

#ifndef __NODE__INT__
#define __NODE__INT__

struct tag{
	int info;
	struct tag *next;
};

typedef struct tag ND;
ND *make_node(int v, ND *next);
int get_value(ND *node);
ND *get_next(ND *node);
void set_value(ND *node, int nilai);

#endif
