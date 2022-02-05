#include <stdio.h>
#include <stdlib.h>

#ifdef _64_DEF
	#define BIT_LIMIT 64
#else
	#define BIT_LIMIT 32
#endif
union{
	float a;
	long b;
}TEST;

int main(int argc, char **argv){
	float angka;
	long tester = 0x80000000;
	
	//checking argument	
	if(argc < 2){
		fprintf(stderr, "error: lack of argument\n");
		exit(1);
	}
	angka = strtod(argv[1],NULL);
	TEST.a = angka;
	
	//konversi
	for(int i = 0; i < BIT_LIMIT; i++){
		int tested = 0;

		if((tested = TEST.b & tester))
			tested = 1;
		printf("%d",tested);
		tester = tester >> 1;
	}
	printf("=%f\n", angka);
	return 0;
}
