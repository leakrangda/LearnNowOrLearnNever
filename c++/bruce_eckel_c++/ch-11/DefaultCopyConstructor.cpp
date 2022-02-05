//:C11:DefaultCopyConstructo.cpp
//Automatic createon of the copy-constructor
#include <iostream>
#include <string>
using namespace std;

class WithCC{	//With copy-constructor
	public:
		//explicit default constructor required:
		WithCC(){}
		WithCC(const WithCC&){
			cout<<"WithCC(WithCC&)"<<endl;
		}
};
class WoCC{	//without copy-constructor
	string id;
	public:
		WoCC(const string& ident = ""):id(ident){}
		void print(const string& msg = "")const{
			if(msg.size() != 0) cout<<msg<<": ";
			cout<<id<<endl;
		}
};

class Composite{
	WithCC withcc;	//embedded objects
	WoCC wocc;
	public:
		Composite():wocc("composite()"){}
		void print(const string& msg = "")const {
			wocc.print(msg);
		}
};

int main(){
	Composite c;
	c.print("contents of c");
	cout<<"calling composite copy-constructor"<<endl;
	Composite c2 = c;	//calls copy- constructor
	c2.print("contents of c2");
}
