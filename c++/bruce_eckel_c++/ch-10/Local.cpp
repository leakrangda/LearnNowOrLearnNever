//:C10:Local.cpp
//Static members & local classes
#include <iostream>
using namespace std;

//Nested class CAN have static data members;
class Outer{
	class Inner{
		static int i; //OK
	};
};
int Outer::Inner::i = 47;

//local class coannot have static data members;
void f(){
	class Local{
		public:
			//! static int i;	//ERROR
			//how would you define i
	}x;
}
int main(){Outer x;f();}

