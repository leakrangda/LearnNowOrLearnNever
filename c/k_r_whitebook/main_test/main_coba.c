#include "k_r.h"

int main(){
	/*main routine*/
	char c;
	while((c = getchar_buf()) != -1){ /*selama bukan EOF (-1)*/
		write(1,&c,1);
	}

}

