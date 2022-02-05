#include <stdio.h>
#include "stack.h"

int main(void)
{
	char ch;
	
	/*infix converter menjadi postfix*/
	/*digunakan hanya dengan tanda kurung*/
	/*note-setiap karakter harus dipisahkan oleh spasi*/

	for(stackinit();scanf("%1c",&ch)!=EOF;){
		if(ch == ')')
			printf("%1c",(char)pop());
		if(ch == '+')
			push((int)ch);
		if(ch == '-')
			push((int)ch);
		if(ch == '*')
			push((int)ch);
		//in book
		while(ch>='0' && ch<='9'){
			printf("%1c",ch);
			scanf("%1c",&ch);
		}
		if(ch!='(')
			printf(" ");
	}
	printf("%1c\n",(char)pop());
}	
