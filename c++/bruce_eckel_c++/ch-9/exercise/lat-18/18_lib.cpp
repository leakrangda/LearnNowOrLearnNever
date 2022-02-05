//18_lib.cpp
#include <iostream>
#define FIELD(x) char* x##_string; int x##_size; int x##_index
#define SFIELD(x,s)	x##_string[s]
using namespace std;

class T{
	FIELD(one);
	FIELD(two);
	FIELD(three);
	FIELD(four);
	public:
		void look(std::string str, int i){
			one_string=
		}
};
int main(){
	T t;
	t.look(3);
	return 0;
}
