#include <stdio.h>
#include <stdlib.h>

struct node{
	int key;
	struct node *next;
};
typedef struct node TAG;

int main(void)
{
	int i, N, M;
	TAG *t,*x;

	scanf("%d %d",&N,&M);
	t=(TAG *)malloc(sizeof(TAG));
	t->key = 1;
	x=t;

	for(i=2;i<=N;i++){
		t->next=(TAG *)malloc(sizeof(TAG));
		t=t->next;
		t->key=i;
	}
	t->next=x;
	while(t != t->next){
		for(i=1;i < M;i++)
			t=t->next;
		printf("%d ",t->next->key);
		/*
		x=t->next;
		t->next=t->next->next;
		*/
		x=t->next;
		t->next=x->next;
		free(x);
	}
	printf("%d\n",t->key);
	return 0;
}
