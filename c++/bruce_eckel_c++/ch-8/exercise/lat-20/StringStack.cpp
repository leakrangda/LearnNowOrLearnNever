//:c08:StringStack.cpp
//using static const to create a
//compile-time constant inside a class

#include <iostream>
#include "MyString.h"
#include <string>
#include <cstring>
using namespace std;

class StringStack{
	static const int size = 100;
	const void* stack[size];
	int index;
	public:
		StringStack();
		void push(const void* s);
		const void* pop();
};

StringStack::StringStack() : index(0){
	memset(stack, 0, size * sizeof(void*));
}
void StringStack::push(const void* s){
	if(index < size)
		stack[index++] = s;
}
const void* StringStack::pop(){
	if(index > 0){
		const void* rv = stack[--index];
		stack[index] = 0;
		return rv;
	}
	return 0;
}
MyString iceCream[] = {
	MyString("pralines & cream"),
	MyString("fudge ripple"),
	MyString("jamocha almond fudge"),
	MyString("wild mountain blackberry"),
	MyString("raspberry sorbet"),
	MyString("lemon swirl"),
	MyString("rocky road"),
	MyString("deep chocolate fudge")
};
const int iCsz = sizeof iceCream / sizeof *iceCream;

int main(){
	StringStack ss;
	for(int i =0; i < iCsz;i++)
		ss.push(&iceCream[i]);
	const MyString* cp;
	while((cp = (MyString*)ss.pop()) != 0)
		cp->print();
}
