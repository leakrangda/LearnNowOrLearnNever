#include <iostream>
#include <cstring>
using namespace std;

char *copy(char *);
int main()
{
	char *str;
	char temp []="ilham nurhikmat";
	cout<<"the string << ilham"<<endl;
	str=copy(temp);
	cout<<"int the ptr="<<str<<" , is "<<&str<<endl;
	delete [] str;
	return 0;

}
char *copy(char *str)
{
	int length=strlen(str);
	char *charPtr=new char[length + 1];
	int i;
	for(i=0;i < length;i++)
		*(charPtr+i)=*(str+i);
	*(charPtr+ (++i))=0;
	return charPtr;
}
	
