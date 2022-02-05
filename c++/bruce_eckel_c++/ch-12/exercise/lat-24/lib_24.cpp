#include <iostream>
#include <string>
using namespace std;

class T{
	string message;
	public:
		T(string arg=""):message(arg){}
		string getString(){
			return message;
		}
};
class U{
	T obj;
	public:
		U(const T& arg):obj(arg){}
		string getMessage(){
			return obj.getString();
		}
};

int main(){
	T inner("hallo world");
	U outer(inner);
	cout<<"sebelum di assign\n";
	cout<<"message="<<outer.getMessage()<<endl;
	U lain(T("halo dunia"));
	outer = lain;
	cout<<"setelah di assign"<<endl;
	cout<<"message="<<outer.getMessage()<<endl;
}
