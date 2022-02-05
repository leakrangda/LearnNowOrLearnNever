#include <stdio.h>
#include <stdlib.h>
#include "../../chpt03/header/stack.h"

struct new{
	char info;
	struct new *l;
	struct new *r;
	};
typedef struct new BTREE;
BTREE *x,*z;

int main(void)
{
	char c;

	/*init z as dummy external node*/
	z=(BTREE *)malloc(sizeof(BTREE));
	z->l=z;
	z->r=z;

	for(stackinit();(c=getchar())!='\n';){
		x=(BTREE *)malloc(sizeof(BTREE));
		x->info=c;
		x->l=z;
		x->r=z;
		if(c=='+' || c=='*'){
			x->r=pop();
			x->l=pop();
		}
		push(x);
	}
}
