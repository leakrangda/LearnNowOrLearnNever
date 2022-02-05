#include <stdio.h>
#include <stdlib.h>

#define	SIZE	20
/*substring-no outside library*/

char *sub_string(char *,int, int);

int main(void)
{
	char string1[SIZE];
	char *pointer;
	int begin,ending;

	printf("masukan string pertama:");
	fgets(string1,SIZE-1,stdin);
	printf("masukan posisi karakter pertama:");
	scanf("%d",&begin);
	printf("masukan posisi karakter kedua:");
	scanf("%d",&ending);
	printf("anda memasukan string:%s",string1);
	printf("akan mengambil dari %d sampai %d\n",begin,ending);
	pointer=sub_string(string1,begin,ending);
	if(pointer!=NULL)
		printf("string yang didapat:%s\n",pointer);
	else
		printf("terjadi error\n");
	return 0;
}
char *sub_string(char *string, int begin, int ending)
{
	char *pointer;
	int index;

	if((pointer=(char *)malloc(sizeof(char)*(ending+1-begin)))==NULL)
		perror("error occured\n");
	else
		for(index=0;(*(pointer+index)=*(string+begin))!=0 && begin<=ending;index++,begin++)
			;
	*(pointer+index)='\0';
	return pointer;
}
