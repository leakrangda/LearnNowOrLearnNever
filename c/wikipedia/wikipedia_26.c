#include <stdio.h>

int main(void)
{
	int ascii=0;

	while(ascii < 256)
		printf("%c ", ascii++);
	return 0;
}
