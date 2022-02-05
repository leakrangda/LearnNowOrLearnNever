#include <stdio.h>
#include "array_queue.h"

int main(){
	char a;

	for(queueinit();(a=getchar())!=EOF;){
		put(a);
		putchar(get());
		putchar('=');
		printf("%d",head);
	}
	return 0;
}
