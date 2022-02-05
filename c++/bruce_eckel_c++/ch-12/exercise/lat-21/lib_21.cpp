#include <iostream>
#include <string>

using namespace std;

class T{
	string message;
	public:
		T():message(""){}
		T(string arg):message(arg){}
		T& operator=(const T& obj){
			string arg="op=call";
			message = arg + obj.message;
			return *this;
		}
		void func(const T& obj){
			if(this == &obj)
				;
			else
				*this = obj;
		}
		string getMessage(){
			return message;
		}
};

int main(){
	T object1, object2("hallo");

	object1 = object2;
	cout<<"object1="<<object1.getMessage()<<endl;
	cout<<"object2="<<object2.getMessage()<<endl;
}
