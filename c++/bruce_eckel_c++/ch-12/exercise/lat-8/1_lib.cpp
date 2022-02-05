//1_lib.cpp
#include <iostream>
using namespace std;

class T{
	int i;
	public:
		T(int ii = 0): i(ii){}
		const T operator++(int){
			T old(i);
			i++;
			return old;
		}
		const T& operator++(){
			i++;
			return *this;
		}
		const T operator+(const T& a){
			return T(i + a.i);
		}
		T& operator-(){
			i *= -1;
			return *this;
		}
		void print(ostream& out){
			out<<"T i=["<<i<<"]"<<endl;
		}
};

int main(){
	T i(1);
	i++;
	i.print(cout);
	++i;
	i.print(cout);
	T j(2);
	i=i + j;
	i.print(cout);
	-i;
	i.print(cout);
}
