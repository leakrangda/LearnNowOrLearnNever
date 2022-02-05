#include <stdio.h>
#include <string.h>
#include "k_r-string.h"

int main(){
	char string[100] = "ini ilham nurhikmat";

	printf("before=%s\n",string);
	squeeze(string, 'i');
	printf("after=%s\n",string);
	printf("string 2= %s\n", "anak pamulang");
	strcat(string, " anak pamulang");
	printf("after=%s\n",string);
	printf("kalimat %s, memiliki huruf yang sama dengan %s, di %d\n",
			string, "abc", any(string, "abc"));
	strcpy(string,"KALIMAT INI BESAR SEMUA");
	printf("%s\n",string);
	lower(string);
	printf("%s\n",string);
	return 0;
}
