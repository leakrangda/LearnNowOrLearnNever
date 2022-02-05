#include <stdio.h>
#define MAX	200

int next[MAX + 2], key[MAX + 2];
int x, head, z;

void listinitialize()
{
	head = 0;
	z = 1;
	x = 2;
	next[head] = z;
	next[z] = z;
}
void deletenext(int t)
{
	next[t] = next[next[t]];
}
int insertafter(int v, int t)
{
	key[x] = v;
	next[x] = next[t];
	next[t] = x;

	return x++;
}
void show(int head)
{
	int counter=0;

	while(counter < z){
		printf("posisi:\t%d \n",next[counter]);
		printf("isi   :\t%d \n",key[counter]);
		counter++;
	}
}
void show_link(int head)
{
	int counter=head;

	printf("-----\n"
		"|%-4d|\n"
		"-----\n"
		"  |  \n"
		"  |  \n"
		"  Y  \n",key[head]);
	while(counter < z){
		printf("-----\n"
			"|%4d|\n"
			"-----\n"
			"  |  \n"
			"  |  \n"
			"  Y  \n",key[counter++]);
	}
	printf("-----\n"
		"|%4d|\n"
		"-----\n"
		"  |  \n"
		"  |  \n"
		"  Y  \n",key[z]);
}
void show_paralel()
{
	int track=head;
	int counter;
	int flag=1;
	while(flag){
		char ans;

		printf("next array\n");
		for(counter=head;counter < 15; counter++)
			printf("[%d]",next[counter]);
		printf("\nkey array\n");
		for(counter=head;counter < 15; counter++)
			printf("[%d]",key[counter]);
		printf("\npress y to continue:");
		scanf("\n%c",&ans);
		if(ans=='N' || ans=='n')
			flag=0;
	}
}
		
int main(void)
{
	int flag=1;

	while(flag){
		int choice;
		int ans;
		int t;

		printf("pilih\n");
		printf("1.init\n");
		printf("2.insert\n");
		printf("3.delete\n");
		printf("4.show\n");
		printf("5.show link\n");
		printf("6.show paralel\n");
		printf("7.close\n");

		scanf("%d",&choice);
		switch(choice){
			case 1:
				listinitialize();
				break;
			case 2:
				printf("angka:");
				scanf("%d",&ans);
				printf("ke:");
				scanf("%d",&t);
				z=insertafter(ans,t);
				break;
			case 3:
				printf("ke:");
				scanf("%d",&t);
				deletenext(t);
				break;
			case 4:
				show(head);
				break;
			case 5:
				show_link(head);
				break;
			case 6:
				show_paralel();
				break;
			case 7:
				flag=0;
				break;
			default:
				printf("input tidak benar\n");
		}
	}
	return 0;
}

