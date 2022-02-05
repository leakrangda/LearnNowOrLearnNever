#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool check_palindrome(char *, int, int);

int main()
{
	char ar[20];

	printf("masukan string bertipe palindrome:");
	fgets(ar,20,stdin);
	if(check_palindrome(ar,0,strlen(ar)-2)==true)
		printf("%s is palindrome\n",ar);
	else
		printf("%s is not palindrome\n",ar);
	return 0;
}
bool check_palindrome(char *string, int begin, int end)
{
	bool flag=false;

	if((end-begin)<=0)
		flag=true;
	else if(*(string+begin)!=*(string+end))
		flag=false;
	else
		flag=check_palindrome(string,++begin,--end);
	return flag;
}
