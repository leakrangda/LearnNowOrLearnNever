#include <stdio.h>
#include "bahasa.h"

int main()
{
	int i;

	SELAMA(i KURANG 10 DAN BUKAN 0){
		printf("hello world\n");
		i SAMA_DENGAN i PLUS 2;
		printf("%p alamat %d\n", REFEREN i, i);
	}
	printf("cintailah ploduk ploduk indonesia\n");
	return 0;
}
