#include <stdio.h>
#include <string.h>
#include <k_r-function.h>

int main(){
	char string[BUFSIZ];

	fgets(string, BUFSIZ-1, stdin);
	string[strlen(string)-1] = '\0';
	if(is_var(string))
		printf("%s is variable\n", string);
	else
		printf("%s is not variable\n", string);
	return 0;
}
