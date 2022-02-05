//1_lib.cpp
#include <iostream>
using namespace std;

class T{
	int i;
	public:
		T(int ii = 0): i(ii){}
		const T* operator++(int){
			T* old=new T(i);
			i++;
			return old;
		}
		const T& operator++(){
			i++;
			return *this;
		}
};

int main(){
	T i(1);
	i++;
	++i;
}
