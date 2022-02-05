#include "simplex.h"
#include <stdio.h>

int* decode(char *argument){
	int memcount=1;
	char *ptr=argument;
	char c;
	int* hasil=NULL;

	while((c=*ptr++)!=0){
		if(isdigit(c) && *(ptr+1) =='x'){
			int* sementara;
			if((sementara=(int*) malloc(memcount))==NULL)
				exit(EXIT_FAILURE);
			if(hasil!=NULL)
				for(int i=0;i < memcount;i++)
					*(sementara+i) = *(hasil + i);
			*(sementara + memcount - 1) = c - '0';
			free(hasil);
			hasil = sementara;
			memcount++;
			ptr+=2
		}
	}
	return hasil;
}
