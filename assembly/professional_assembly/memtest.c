/* memtest.c - An example of using memory locations as values */
#include <stdio.h>

int main(){
	int dividend = 20;
	int divisor = 5;
	int result;

	asm("divb %2\n\t"			
		"movl %%eax, %0"
		:"=m"(result)
		:"a"(dividend), "m"(divisor)
	   );
	printf("the result is %d\n", result);
	return 0;
}
