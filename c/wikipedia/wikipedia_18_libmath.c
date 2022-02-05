#include <stdio.h>
#include <math.h>

void get_number(float *number);
int main(void)
{
	float number;
	int ans;

	printf("choose the option\n");
	printf("1.sine\n");
	printf("2.cosine\n");
	scanf("%d",&ans);
	switch(ans){
		case 1:
			get_number(&number);
			printf("the result is %f\n",sin(number));
			break;
		case 2:
			get_number(&number);
			printf("the result is %f\n",cos(number));
			break;
		default:
			printf("you input the wrong number\n");
	}
	return 0;
}
void get_number(float *number)
{
	printf("masukan angka:");
	scanf("%f",number);
}

