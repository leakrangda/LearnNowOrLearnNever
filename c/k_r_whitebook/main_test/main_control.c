#include <stdio.h>
#include <unistd.h>
#include "k_r-control.h"

int main(){
	int number[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
	char s1[100];
	char s2[] = "ilham nurhikmat\tkeren sekali\n";
	char s3[100];

	printf("normal binsearch:\n");
	for(int i = 0;i < 100000;i++)
		printf("angka 1 ada di %d\n", binsearch(1, number, 9));
	sleep(2);
	printf("secondary binsearch:\n");
	for(int i = 0;i < 100000;i++)
		printf("angka 1 ada di %d\n", binsearch_2(1, number, 9));

	printf("s2=%s\n",s2);
	escape(s1, s2);
	printf("s1=%s\n",s1);
	reverse_escape(s3, "ini garing=\\\\, ini tab=\\t, ini garis baru=\\n");
	printf("s3=%s\n",s3);

	expand(s3, "a-z");
	printf("a-z=%s\n", s3);
	expand(s3, "-a-z");
	printf("-a-z=%s\n", s3);
	expand(s3, "az");
	printf("az=%s\n", s3);

	itob(1234, s3, 16);
	printf("1234 is %s in base 16\n",s3);

	itoa_i(1234,s3,10);
	printf("1234 is %s\n", s3);

	return 0;
}
