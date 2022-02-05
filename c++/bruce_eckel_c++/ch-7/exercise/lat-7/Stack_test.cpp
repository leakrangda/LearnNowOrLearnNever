//Stack_test.cpp
#include <iostream>
#include <string>
#include "Stack3.h"

using namespace std;

int main()
{
	string* array[5];
#ifdef	_INT_INC
	int* intArray[5];
#endif
	for(int i=0;i < 5;i++){
		string *tmp=new string;
		cout<<":";
		getline(cin,*tmp);
		array[i]=tmp;
	}
#ifdef	_INT_INC
	for(int i=0;i < 5;i++){
		int *tmp=new int;
		cout<<"int:";
		cin>>*tmp;
		intArray[i]=tmp;
	}
#endif
	for(int i=0;i < 5;i++){
		cout<<array[i]<<":"<<*array[i]<<endl;
#ifdef	_INT_INC		
		cout<<intArray[i]<<":"<<*intArray[i]<<endl;
#endif
	}
	Stack ar((void** )array, sizeof(array)/sizeof *array);
#ifdef	_INT_INC	
	Stack intAr((void**)intArray, sizeof(intArray)/sizeof *intArray);
#endif
	string* stringTmp;
#ifdef	_INT_INC
	int* intTmp;
#endif
	while((stringTmp=(string*)ar.pop())!=0){
		cout<<*stringTmp<<endl;
	}
#ifdef	_INT_INC
	while((intTmp=(int*)intAr.pop())!=0){
		cout<<*intTmp<<endl;
	}
#endif
	return 0;
}
