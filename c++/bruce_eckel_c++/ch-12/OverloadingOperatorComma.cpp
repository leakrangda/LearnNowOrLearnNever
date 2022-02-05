//:C12:OverloadingOperatorComma.cpp
#include <iostream>
using namespace std;

class After{
	public:
		const After& operator,(const After&)const{
			cout<<"After::operator,()"<<endl;
			return *this;
		}
};
class Before{};
void f(After a, After b){
}

Before& operator,(int, Before& b){
	cout<<"Before::operator,()"<<endl;
	return b;
}
int main(){
	After a,b;
	a,b;	//operator comma called

	Before c;
	1,c;	//operator comma called

	f(a,b);
}
