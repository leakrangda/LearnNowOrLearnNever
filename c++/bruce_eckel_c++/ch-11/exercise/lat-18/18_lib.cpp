//18_lib.cpp
#include <iostream>
using namespace std;

class T{
	int a;
	public:
		T(int arg=0):a(arg){}
		T(const T& arg, int b=0):a(b){cout<<"ini kopian"<<endl;}//copy constructor akan di-invoke walau memiliki argument selain class reference
		~T(){
			cout<<"nilai a="<<a<<endl;
			cout<<"dihancurcan"<<endl;
		}
};
int main(){
	T test(2);
	T test2(test);
}
