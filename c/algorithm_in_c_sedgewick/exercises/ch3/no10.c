#include <stdio.h>
#include "../../chpt03/header/queue.h"

int main(){
	int c;

	for(queueinit();((c=getchar())!=EOF);){
		put(c);
		printf("%4c",get());
	}
	return 0;
}
