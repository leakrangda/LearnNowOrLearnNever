#ifndef BTREE__
#define	BTREE__

struct tag{
	int info;
	struct tag *left;
	struct tag *right;
	};
typedef struct tag BTREE;
extern BTREE *root;

BTREE *init_bintree(void);
void choose_create(BTREE *root);
BTREE* create(int info);
void create_left(int info,BTREE *node);
void create_right(int info,BTREE *node);
void del_all(BTREE *root);
void del(BTREE *node);
void pre_traverse(BTREE *root,void (*func)(BTREE *));
void in_traverse(BTREE *root,void (*func)(BTREE *));
void post_traverse(BTREE *root,void (*func)(BTREE *));
void level_traverse(BTREE *root,void (*func)(BTREE *));
void visit(BTREE *node);
void recursive_postorder(BTREE *root,void (*func)(BTREE *));
void recursive_preorder(BTREE *root,void (*func)(BTREE *));
void recursive_inorder(BTREE *root,void (*func)(BTREE *));
#endif
