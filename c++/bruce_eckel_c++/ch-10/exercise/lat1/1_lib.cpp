//1_lib.cpp
#include <iostream>
using namespace std;

int f(int* arg=0){
	static int* i;
	if(arg){
		i = arg;
		return -1;
	}
	else
		if(i==NULL){
			cout<<"un initialized variable i"<<endl;
			//exit(EXIT_FAILURE);
		}
	else
		if(*i!=-1)
			return *i++;
}
int main(){
	int i[]={1,2,3,4,5,6,7,8,9,-1}, j;
	f();
	f(i);
	while((j=f())!=-1)
		cout<<"j = "<<j<<endl;
}
