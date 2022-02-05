#ifndef STRINGSTACK_H
#define STRINGSTACK_H
#include <string>
using namespace std;
class StringStack{
	static const int size = 100;
	const string* stack[size];
	int index;
	public:
		StringStack();
		void push(const string* s);
		const string* pop();
};

inline StringStack::StringStack() : index(0){
	memset(stack, 0, size * sizeof(string*));
}
inline void StringStack::push(const string* s){
	if(index < size)
		stack[index++] = s;
}
inline const string* StringStack::pop(){
	if(index > 0){
		const string* rv = stack[--index];
		stack[index] = 0;
		return rv;
	}
	return 0;
}
#endif
