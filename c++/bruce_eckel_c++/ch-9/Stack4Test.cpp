//:c08:Stack4Test.cpp
#include "Stack4.h"
#include "../require.h"
#include <fstream>
#include <iostream>
#include <string>
using namespace std;

int main(int argc, char* argv[]){
	requireArgs(argc, 1);	//file name is argument
	ifstream in(argv[1]);
	assure(in, argv[1]);
	Stack textlines;
	string line;
	//Read file and store lines in the stack:
	while(getline(in, line))
		textlines.push(new string(line));
	//pop thelines from the stack and print them:
	string* s;
	while((s = (string*)textlines.pop()) != 0){
		cout<<*s<<endl;
		delete s;
	}
}
