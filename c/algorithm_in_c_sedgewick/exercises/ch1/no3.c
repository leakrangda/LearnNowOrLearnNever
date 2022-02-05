#include <stdio.h>
#include "../sedgewick_source.h"

struct fraction{
	int numerator;
	int denumerator;
};

typedef struct fraction TAG;

TAG reduce_it(TAG fraction)
{
	int result;
	TAG ret;

	result=gcd_mod(fraction.numerator,fraction.denumerator);
	printf("result=%d\n",result);
	ret.numerator=fraction.numerator/result;
	ret.denumerator=fraction.denumerator/result;

	return ret;
}

int main(void)
{
	int a,b;
	TAG first,result;

	printf("masukan numerator:");
	scanf("%d",&a);
	printf("masukan denumerator:");
	scanf("%d",&b);
	first.numerator=a;
	first.denumerator=b;
	result=reduce_it(first);
	printf("hasil dari %d / %d adalah:\n",a,b);
	printf("%d/%d\n",result.numerator,result.denumerator);
	return 0;
}	
