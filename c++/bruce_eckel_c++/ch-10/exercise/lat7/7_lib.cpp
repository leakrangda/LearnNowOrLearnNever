//7_lib.cpp
#include <cstdlib>
#include <iostream>
using namespace std;

class T{
	public:
		~T(){
			cout<<"object T destroyed"<<endl;
			exit(EXIT_FAILURE);
		}
};
T t;
int main(){}
