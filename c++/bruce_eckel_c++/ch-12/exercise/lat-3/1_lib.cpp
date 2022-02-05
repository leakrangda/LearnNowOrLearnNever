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
		const T operator+(const T& a)const{
			return T(i + a.i);
		}
		const T operator-(const T& a)const{
			return T(i - a.i);
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
	T k(9);
	i=i + j - k;
	i.print(cout);
}
