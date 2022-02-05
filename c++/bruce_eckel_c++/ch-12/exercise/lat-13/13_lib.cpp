#include <iostream>

class T{
	int *ptr;
	public:
		T(int* arg): ptr(arg){}
		T(){
			ptr=NULL;
		}
		const T operator=(const T& arg){
			if(this == &arg)
				;
			else{
				ptr = new int;
				*ptr = *(arg.ptr);
			}
			return *this;
		}
};

int main(){
	int a=10;

	T test(&a);
	T coba = test;
}
