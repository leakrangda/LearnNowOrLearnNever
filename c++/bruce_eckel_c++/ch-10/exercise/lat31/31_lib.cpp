//31_lib.cpp
//singleton.cpp
#include <iostream>
#include <string>
using namespace std;

class Printer{
	static Printer p;
	string stat;
	Printer(string arg="idle"):stat(arg){cout<<"Printer object is creted."
		<<endl;}
	Printer(const Printer&);	//Prevent copy construction
	public:
		static Printer* instance(){return &p;}
		string status()const{return stat;}
		~Printer(){cout<<"Printer object is destroyed."<<endl;}
};

Printer Printer::p("printing");
int main(){
	cout<<"the Printer status:"
		<<Printer::instance()->status()<<endl;
}
