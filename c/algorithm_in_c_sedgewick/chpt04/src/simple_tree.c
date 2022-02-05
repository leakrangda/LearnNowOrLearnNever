#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "../header/bintree.h"
#include "../header/bintree_stack.h"
#define MAX 100
#define EXAMINE(x) printf("the result of %s \n", #x), x;

BTREE* isi(char*, int, int);	//declared
BTREE *root,*sementara;		//defined
BSTACK *HEAD, *TAIL, *TEMP;	//defined
int main(){
	char str[]="1234567";		//simple string for demonstration

	root = isi(str, 0, strlen(str)-1);	//set binary tree from string
	sementara = root;			//temporary root node
	stackinit();				//initialize the binary strack
	//pre_traverse(sementara,visit);		//traverse the tree and show value
	EXAMINE(recursive_postorder(sementara, visit));
	EXAMINE(post_traverse(sementara, visit));
	putchar('\n');
	/*{
		//node pertama
		visit(sementara);
		visit(sementara->right);
		visit(sementara->left);
		//node kedua
		visit(sementara->right);
		visit(sementara->right->right);
		visit(sementara->right->left);
		//node ketiga
		visit(sementara->left);
		visit(sementara->left->right);
		visit(sementara->left->left);
	}*/
	del_all(sementara);			//traverse and free all tree
	return 0;
}
BTREE* isi(char *str, int start, int end){
	int n=(start + end)/2;			//divide and qonquere approach

	BTREE *node=(BTREE*)malloc(sizeof(BTREE)); //set the node
	node->left = NULL;			//set left link NULL	
	node->right = NULL;			//set right link NULL
	if(n < end)				//if n less then end
		node->right = isi(str,n + 1, end); //recursively set right link
	if(n > start)				//if n greater then start
		node->left = isi(str,start, n - 1); //recursively set left link
	node->info = *(str + n);		//set the value with char in index n
	return node;				//return the link
}
