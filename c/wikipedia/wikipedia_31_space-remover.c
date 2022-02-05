#include <stdio.h>

#define	SIZE	50

/*space remover-no outside library*/
char *rem(char *);

int main()
{
	char string[SIZE];

	printf("masukan string:");
	fgets(string,SIZE-1,stdin);
	printf("anda memasukan:%s",string);
	printf("setelah di hilangkan spasi\n:");
	printf("%s",rem(string));
	return 0;
}
char *rem(char *string)
{
	int index1=0;
	int index2=0;
	while(*(string+index2)!=0){
		if(*(string+index2)==' ')
			index2++;
		else
			*(string+index1++)=*(string+index2++);
	}
	*(string+index1)=0;
	return string;
}
