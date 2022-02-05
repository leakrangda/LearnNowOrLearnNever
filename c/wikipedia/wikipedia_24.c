#include <stdio.h>
#include <math.h>
#include <stdbool.h>

int is_it_amstrong(int number);
void get_number(int *number);

int main(void)
{
	int number;
	int flag=true;

	while(flag){
		char ans;

		get_number(&number);
		if(is_it_amstrong(number)) /*true if amstrong, false if not*/
			printf("%d it is armstrong\n",number);
		else
			printf("%d it is not armstrong\n",number);
		getc(stdin);
		printf("do you want continue(y/n):");
		if((ans=getchar())=='N' || ans=='n')
			flag=false;
	}
	return 0;
}
int is_it_amstrong(int number)
{
	int ret=0;
	int dummy;
	int temp;
	int hasil=0;

	dummy=number;

	while(dummy){
		temp=dummy % 10;
		hasil+=temp*pow(temp,2);
		dummy/=10;
	}
	if(hasil==number)
		ret=1;
	else
		ret=0;
	return ret;
}
void get_number(int *number)
{
	printf("masukan angka:");
	scanf("%d",number);
}
