#include <stdio.h>
#include <string.h>

#define SIZE	30
/*string concatenation-with string.h library*/


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
	string1[strlen(string1)-1]=0;
	string2[strlen(string2)-1]=0;
	pointer=strcat(string1,string2);
	if(pointer!=NULL)
		printf("final string:%s",pointer);
	else
		printf("shit happended\n");
	return 0;
}
