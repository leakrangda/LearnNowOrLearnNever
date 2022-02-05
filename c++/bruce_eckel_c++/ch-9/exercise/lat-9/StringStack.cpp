//:c08:StringStack.cpp
//using static const to create a
//compile-time constant inside a class
#include <string>
#include <iostream>
#include <cstring>
#include "StringStack.h"
using namespace std;

string iceCream[] = {
	"pralines & cream",
	"fudge ripple",
	"jamocha almond fudge",
	"wild mountain blackberry",
	"raspberry sorbet",
	"lemon swirl",
	"rocky road",
	"deep chocolate fudge"
};
const int iCsz = sizeof iceCream / sizeof *iceCream;

int main(){
	StringStack ss;
	for(int i =0; i < iCsz;i++)
		ss.push(&iceCream[i]);
	const string* cp;
	while((cp = ss.pop()) != 0)
		cout << *cp <<endl;
}
