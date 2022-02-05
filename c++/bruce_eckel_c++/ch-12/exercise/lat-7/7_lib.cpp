//1_lib.cpp
#include <iostream>
using namespace std;

class T{
	int i;
	public:
		T(int ii = 0): i(ii){}
		const T operator++(int){	//postfix
			T old(i);
			i++;
			return old;
		}
		T& operator++(){		//prefix
			i++;
			return *this;
		}
		const T operator--(int){	//postfix
			int temp=i;
			i++;
			return T(temp);
		}
		T& operator--(){		//prefix
			i--;
			return *this;
		}
		friend const T operator+(const T& a, const T& b);
		friend const T operator-(const T& a, const T& b);
		friend ostream& operator<<(ostream& out, const T& in);
		friend istream& operator>>(istream& input, T& in);
};

ostream& operator<<(ostream& out, const T& in){
	out<<"T i=["<<in.i<<"]"<<endl;
}
istream& operator>>(istream& input, T& in){
	cin>>in.i;
	return input;
}
const T operator+(const T& a, const T& b){
	return T(a.i + b.i);
}
const T operator-(const T& a, const T& b){
	return T(a.i - b.i);
}

int main(){
	T i(1);
	i++;
	cout<<i;
	++i;
	cout<<i;
	T j(2);
	i=i + j;
	cout<<i;
	T k(9);
	i=i + j - k;
	cout<<i;
	i--;
	cout<<i;
	--i;
	cout<<i;
	cin>>i;
	cout<<i;
}
