#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int *get_int(char *,int *);
void show(int *,int);

int main()
{
	int n,m;
	char str[100];
	int *ar[10];
	int *ptr;
	
	scanf("%d%d\n",&n,&m);

	for(int i=0;i < n;i++){
		fgets(str,100,stdin);
		ptr=(int *)malloc(sizeof(int)*m);
		ar[i]=get_int(str,ptr);
		//show(ar[i],m);
	}
	for(int i=0;i < m;i++){
		for(int j=0;j < n;j++){
			printf("%d ", *(ar[j]+i));
		}
		printf("\n");
	}
		
	return 0;
}
int *get_int(char *str, int *ptr)
{
	int i=0;
	int *j=ptr;
	int temp=0;
	while(*(str+i)!='\0'){
		if(*(str+i)>='0' && *(str+i)<='9'){
			temp=(temp * 10) + *(str+i)-'0';
		}
		else{
			*ptr=temp;
			temp=0;
			ptr++;
		}
		i++;
	}
	return j;
}
void show(int *ptr, int size)
{
	puts("-------------------\n");
	while(size--){
		printf("%d ", *ptr);
		ptr++;
	}
	puts("\n-------------------");
	putchar('\n');
}
