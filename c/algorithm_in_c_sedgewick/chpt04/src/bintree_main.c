#include <stdio.h>
#include <ctype.h>
#include "../header/bintree.h"
#ifndef BSTACK__
	#include "../header/bintree_stack.h"
#endif

BTREE *root;
BSTACK *HEAD, *TAIL, *TEMP;
int main(void)
{
	int flag=1;
	void (*func)(BTREE *)=visit;
	
	root=init_bintree();
	visit(root);
	while(flag){
		char ans;
		printf("tambah atau keluar:");
		ans=getchar();
		getchar();
		if(tolower(ans)!='k')
			choose_create(root);
		else
			flag=0;
	}
	stackinit();
	in_traverse(root);
	putchar('\n');
	pre_traverse(root,func);
	putchar('\n');
	del_all(root);
	return 0;
}
