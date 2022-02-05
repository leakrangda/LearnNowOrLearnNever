#include <stdio.h>
#define N	100000

int top=-1;
int stack[N];

int empty();
void push(int);
int pop();
int* get_int(char *, int *);

int main()
{
	char str[100];
	int angka[2];
	int n;
	
	scanf("%d",&n);
	getchar();
	for(int i=0;i < n;i++){
		fgets(str,100,stdin);
		get_int(str,angka);
		if(angka[0]==1){
			if(!empty())
				puts("No Food");
			else
				printf("%d\n",pop());
		}
		else
			if(top < N)
				push(angka[1]);
	}
    return 0;
}
int pop()
{
	if(!empty())
		return -1;	
	else
		return stack[top--]; 	
}
int empty()
{
	if(top==-1)
	  return 0;
	else
	  return 1;
}
void push(int a)
{
	if(top==N)
		return ;
	else
		stack[++top]=a;
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
