#include <iostream>
#include "../../cpplib.h"
#include "../../stack.h"
#include <string>
#include <fstream>
using namespace std;

int main()
{
	Stack stack;
	Stash *stash;
	int bufsize=100;
	ifstream file("stack_stash.cpp");
	string line;
	int i=0;

	stack.initialize();
	stash=new Stash;
	stash->initialize(sizeof(char) * bufsize);
	while(getline(file,line)){
			if(i>3){
				stack.push(stash);
				stash=new Stash;
				stash->initialize(sizeof(char) *bufsize);
				i=0;
			}	
		stash->add(line.c_str());
		i++;
	}
	while((stash = (Stash *)stack.pop())!=0){
		i=0;
		while(i<4){
			cout<<"line "<<i<<(char *)stash->fetch(i++)<<endl;
		}
		stash->cleanup();
	}
	return 0;
}
