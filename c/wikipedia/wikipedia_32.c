#include <stdio.h>
#include <string.h>

unsigned int find_s(char *, char *);
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
	if(find_s(string1,string2)==-1)
		printf("string2 terlalu panjang atau tidak ditemukan\n");
	else
		printf("posisi string2 ada di %u\n",find_s(string1,string2));
	printf("masukan string pengganti:");
	fgets(string3,100-1,stdin);
	string3[strlen(string3)-1]=0;
	printf("%s\n",replace_s(string1,string2,string3));
	return 0;
}
unsigned int find_s(char *string, char *cari)
{
	char *position1;
	char *position2;
	unsigned int pos=-1;

	position1=string;
	position2=cari;
	if(strlen(string) < strlen(cari))
		return 0;
	while(*position1!=0 && *position2!=0){
		if(*position1==*position2){
			pos=position1-string;
			while(*position1++==*position2++);
		}
		if(*position2!=0)
			position2=cari;
		position1++;
	}
	return pos;
}
char *replace_s(char *string1, char *ganti, char *pengganti)
{
	char *pointer=string1;
	unsigned pos=find_s(string1,ganti);

	if(pos!=-1)
		pointer+=pos;
	else
		return NULL;
	while((*pointer++=*pengganti++)!=0);
	return string1;
}
