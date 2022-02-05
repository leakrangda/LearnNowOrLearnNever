#include <stdio.h>
#include "stack.h"

int main(void)
{
	int ch;
	
	/*infix converter menjadi postfix*/
	/*digunakan hanya dengan tanda kurung*/

	for(stackinit();(ch=getchar())!='\n';){
		if(ch == ')')
			printf("%1c",(char)pop());
		if(ch == '+')
			push((int)ch);
		if(ch == '-')
			push((int)ch);
		if(ch == '*')
			push((int)ch);
		/*in book
		while(c>='0' && c<='9'){
			printf("%1c",c);
			scanf("%1c",&c);
		}
		*/
		if(ch>='0' && ch<='9')
			printf("%1c",ch);
		if(ch!='(')
			printf(" ");
	}
	printf("%1c\n",(char)pop());
}	
