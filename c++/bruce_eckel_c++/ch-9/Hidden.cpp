//:c09:Hidden.cpp
//hidden activities in inlines
#include <iostream>
using namespace std;

class Member{
	int i, j, k;
	public:
		Member(int x =0):i(x),j(x),k(x){}
		~Member(){cout<<"~member"<<endl;}
};
class WithMembers{
	Member q, r, s; //have constructors
	int i;
	public:
		WithMembers(int ii):i(ii){}	//Trivial?
		~WithMembers(){
			cout<<"~WithMembers"<<endl;
		}
};
int main(){
	WithMembers wm(1);
}
