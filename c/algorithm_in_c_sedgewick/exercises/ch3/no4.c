/*josephus problem with array*/

#include <stdio.h>

#define MAX	20

int main(void)
{
	int a[20];
	int counter;
	int number=0;
	int still=20;
	int stop=1;

	for(counter=0;counter < 20;counter++)
		a[counter]=1;
	counter=0;
	scanf("%d",&number);

	while(still > 0){
		if((stop%number)==0){
			if(a[counter]==1){
				printf("%d ",counter+1);
				a[counter]=0;
				still--;
			}
			else
				stop++;
		}
		if(counter < 19)
			counter++;
		else
			counter=0;
		stop++;
		/*
		printf("\tstop=%d\n",stop);
		printf("\tcounter=%d\n",counter);
		getchar();
		*/
		
	}
	printf("\n");
}
