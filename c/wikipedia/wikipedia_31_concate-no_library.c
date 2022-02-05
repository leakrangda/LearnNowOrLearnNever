#include <stdio.h>

#define SIZE	30
/*string concatenation-no outside library*/

char *concate(char *, char *);
int length(char *);

int main(void)
{
	char string1[SIZE];
	char string2[SIZE];
	char *pointer;

	printf("get string:");
	fgets(string1,SIZE-1,stdin);
	printf("the string you want to concatenate:");
	fgets(string2,SIZE-1,stdin);
	
	printf("first string:%s",string1);
	printf("second string:%s",string2);
	string1[length(string1)-1]=0;
	string2[length(string2)-1]=0;
	pointer=concate(string1,string2);
	if(pointer!=NULL)
		printf("final string:%s",pointer);
	else
		printf("shit happended\n");
	return 0;
}
char *concate(char *pointer1, char *pointer2)
{
	if(length(pointer1)+length(pointer2) >= SIZE){
		printf("string yang akan dimasukan terlalu panjang");
		return NULL;
	}
	else{
		int index;
		int size=length(pointer1);
		for(index=size;(pointer1[index]=pointer2[index-size])!=0;index++)
			;
	}
	return pointer1;
}
int length(char *pointer)
{
	int index;
	for(index=0;pointer[index]!=0;index++)
		;
	return index;
}
			
