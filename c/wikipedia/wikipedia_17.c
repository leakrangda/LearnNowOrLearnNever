#include <stdio.h>

int series_arit(int begin, int stop, int number);
int series_geo(int begin, int stop, int number);
void get_number(int *begin, int *stop, int *number);
int main(void)
{
	int ans;
	int begin, stop, number;

	printf("printf of series number\n");
	printf("please choose:\n");
	printf("1. aritmatic sequence\n"
		"2. geometric sequence\n");
	scanf("%d",&ans);
	switch(ans){
		case 1:
			get_number(&begin,&stop,&number);
			series_arit(begin,stop,number);
			break;
		case 2:
			get_number(&begin,&stop,&number);
			series_geo(begin,stop,number);
			break;
		default:
			printf("anda memasukan input salah\n");
	}
	return 0;
}
void get_number(int *begin, int *stop, int *number)
{
	printf("masukan nilai yang ingin dari:\n");
	printf("begin:");
	scanf("%d",begin);
	printf("stop:");
	scanf("%d",stop);
	printf("number:");
	scanf("%d",number);
}
int series_arit(int begin, int stop, int number)
{
	int index;

	printf("sequence yang dihasilkan:\n");
	for(index=begin;index <= stop; index+=number)
		printf("%d ",index);
	printf("\n");
	return 0;
}
int series_geo(int begin, int stop, int number)
{
	int index;
	printf("sequence yang dihasilkan:\n");
	for(index=begin;index <= stop; index*=number)
		printf("%d ",index);
	printf("\n");
	return 0;
}
