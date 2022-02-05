//stacktest.cpp
//test of nested linked list
#include "stack.h"
#include "../require.h"
#include <fstream>
#include <iostream>
#include <string>
using namespace std;

int main(int argc, char*argv[])
{
	requireArgs(argc, 1);//file name argument, 1 hanya untuk nama
	ifstream in(argv[1]);
	assure(in, argv[1]);
	Stack textlines;
	textlines.initialize();
	string line;
	//read file and store line in stack
	while(getline(in, line))
		textlines.push(new string(line));
	//pop the lines from the stack and print them
	string* s;
	while((s=(string*)textlines.pop())!=0){
		cout<<*s<<endl;
		delete s;
	}
	textlines.cleanup();
}

