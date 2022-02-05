#include <iostream>
#include <sstream>		//stringstream
using namespace std;

class T{
	char a;
	public:
		T(char arg='?'):a(arg){};
		friend ostream& operator<<(ostream& out, const T& in);
		friend istream& operator>>(istream& in, T& out);
};

ostream& operator<<(ostream& out, const T& in){
	out<<in.a;
	return out;
}
istream& operator>>(istream& in, T& out){
	in>>out.a;
	return in;
}

int main(){
	stringstream input("i l h a m");
	T test;
	cout<<test;
	cin>>test;
	cout<<test;
	for(int i=0;i < 5;i++){
		input>>test;
		cout<<'['<<test<<']'<<endl;
	}
	cout<<test;
	cout<<endl;
}
