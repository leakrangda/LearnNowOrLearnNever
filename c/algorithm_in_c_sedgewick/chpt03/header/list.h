#ifndef LIST__
#define LIST__

/*for simple key*/
struct node{
	int key;
	struct node *next;
};
typedef struct node LIST;

LIST *HEAD, *END, *TEMP;
/*init list*/
void listinit(void);
/*insert a new list*/
void insertafter(LIST *temp, int value);
/*delete a list after a member*/
int deleteafter(LIST *temp);
/*return false if list empty*/
int listempty(void);
/*move next list to front*/
int move_next_to_front(LIST *temp);
#endif
