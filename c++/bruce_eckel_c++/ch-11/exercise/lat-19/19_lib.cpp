//19_lib.cpp gak pake header sendiri, males bikin
#include <iostream>
using namespace std;

class T{
	int dummy;
	public:
		T(int arg=0):dummy(arg){}
		T(const T& arg):dummy(arg.dummy){cout<<"dikopi"<<endl;}
		~T(){
			cout<<"dummy: "<<dummy
				<<endl;
			cout<<"dihancurkan"<<endl;
		}
};
class U{
	T bunny;
	public:
		U(T arg):bunny(arg){}
		U(){
			cout<<"no arg"<<endl;
		}
};

int main(){
	U test;
	U test2(test);
}
