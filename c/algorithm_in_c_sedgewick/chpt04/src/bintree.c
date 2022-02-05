#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include "../header/bintree_stack.h"
#include "../header/bintree_queue.h"

/*pre order traverse non recursive using stack operation*/
void pre_traverse(BTREE *t,void (*func)(BTREE *))
{
	push(t);
	while(!stackempty()){
		t=pop();
		func(t);
		if(t->left != NULL)
			push(t->left);
		if(t->right != NULL)
			push(t->right);
	}
}

/*in order traverse non recursive using stack operation*/
void in_traverse(BTREE *t,void (*func)(BTREE *))
{
	;
}

/*post order traverse non recursive using stack operation*/
void post_traverse(BTREE *t,void (*func)(BTREE *))
{
	BTREE* root=t;

	push(root);
	while(!stackempty()){
		if(root->left!=NULL){
			push(root->left);
			root=root->left;
		}
		else if(root->right!=NULL){
			push(root->right);
			root=root->right;
		}
		else{
			root=pop();
			visit(root);
		}
	}
}
/*level order traverse non recursive using queue operation*/
void level_traverse(BTREE *t, void (*func)(BTREE *)){
	;
}
/*initialization of binary tree_check if there is a t already*/
BTREE *init_bintree()
{
	int temp;

	/*check t*/
	if(root){
		perror("already a root\n");
		return root;
	}
	if((root=(BTREE *)malloc(sizeof(BTREE)))==NULL){
		fprintf(stderr,"cant alocate memory.terminate program\n");
		exit(1);
	}
	printf("masukan data:");
	scanf("%d",&temp);
	root->info=temp;
	root->left=NULL;
	root->right=NULL;
	return root;
}
/*create a node_return null if no memory, or pointer to BTREE
if success*/
BTREE *create(int info)
{
	BTREE *temp;

	/*check if there no memory error*/
	if((temp=(BTREE *)malloc(sizeof(BTREE)))==NULL)
		fprintf(stderr,"alocation error.\n");
	temp->info=info;
	temp->left=NULL;
	temp->right=NULL;
	return temp;
}
/*create a node based on left child preference*/
void create_left(int info,BTREE *node)
{
	node->left=create(info);
}
/*create a node based on right child preference*/
void create_right(int info,BTREE *node)
{
	node->right=create(info);
}
void choose_create(BTREE *t)
{
	BTREE *temp;
	int info;
	int ans;
	char arah;
	int flag=1;
	int counter=0;

	temp=t;
	printf("masukan data(int):");
	scanf("%d",&info);
	getchar();
		
	while(flag){
		printf("node leve=%d\n",counter++);
		printf("klik L/l untuk left atau R/r untuk right node:");
		scanf("%c",&arah);
		getchar();
		if(tolower(arah)=='l'){
			if(temp->left!=NULL)
				temp=temp->left;
			else{
				printf("created\n");
				create_left(info,temp);
				flag=0;
			}
		}
		else if(tolower(arah)=='r'){
			if(temp->right!=NULL)
				temp=temp->right;
			else{
				printf("created\n");
				create_right(info,temp);
				flag=0;
			}
		}
		else
			flag=0;
	}
}
/*show what is inside the node*/
void visit(BTREE *node)
{
	if(!node)
		return;
	printf("the info:\n");
	printf("1.key\t:%c\n",(char)node->info);
	printf("2.right link\t:%p\n",node->right);
	printf("3.left link\t:%p\n",node->left);
}
/*delete node*/
void del(BTREE *node)
{
	free(node);
}
/*delete node as traverse*/
void del_all(BTREE *t)
{
	void (*func)(BTREE *)=del;
	pre_traverse(t,func);
}
/*recursive version of postorder traverse*/
void recursive_postorder(BTREE* t, void (*func)(BTREE *)){
	if(t->left!=NULL)
		recursive_postorder(t->left, func);
	if(t->right!=NULL)
		recursive_postorder(t->right, func);
	func(t);
}
/*recursive version of preorder traverse*/
void recursive_preorder(BTREE* t, void (*func)(BTREE *)){
	func(t);
	if(t->left!=NULL)
		recursive_preorder(t->left, func);
	if(t->right!=NULL)
		recursive_preorder(t->right, func);
}
/*recursive version of inorder traverse*/
void recursive_inorder(BTREE *t, void (*func)(BTREE *)){
	if(t->left!=NULL)
		recursive_inorder(t->left, func);
	func(t);
	if(t->right!=NULL)
		recursive_inorder(t->right, func);
}
