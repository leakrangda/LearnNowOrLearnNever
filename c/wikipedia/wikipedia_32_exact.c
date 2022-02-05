#include <stdio.h>
#include <string.h>

unsigned int exact_s(char *, char *);
char *replace_s(char *, char *,char *);

int main(void)
{
	char string1[100];
	char string2[100];
	char string3[100];

	printf("masukan string 1:");
	fgets(string1,100-1,stdin);
	printf("masukan string 2:");
	fgets(string2,100-1,stdin);
	string1[strlen(string1)-1]=0;
	string2[strlen(string2)-1]=0;
	if(exact_s(string1,string2)==-1)
		printf("string2 terlalu panjang atau tidak ditemukan\n");
	else
		printf("posisi string2 ada di %u\n",exact_s(string1,string2));
	printf("masukan string pengganti:");
	fgets(string3,100-1,stdin);
	string3[strlen(string3)-1]=0;
	printf("%s\n",replace_s(string1,string2,string3));
	return 0;
}
unsigned int exact_s(char *string, char *cari)
{
	/*pattern matching_-_brute force exact pattern matching*/

	unsigned int M;
	unsigned int N;
	int index;

	M=strlen(string);
	N=strlen(cari);
	for(index=0;index < M-N;index++){
		int jndex;
		for(jndex=0; jndex < N;jndex++)
			if(*(string+index+jndex)!=*(cari+jndex))
				break;
		if(jndex==N)
			return index;
	}
	return -1;
}
char *replace_s(char *string1, char *ganti, char *pengganti)
{
	char *pointer=string1;
	unsigned pos=exact_s(string1,ganti);

	if(pos!=-1)
		pointer+=pos;
	else
		return NULL;
	while((*pointer++=*pengganti++)!=0);
	return string1;
}
