//clibtest.cpp
//test the c-likelibrary
//
#include "clib.h"
#include <fstream>
#include <iostream>
#include <string>
#include <cassert>
using namespace std;

int main(){
	//define variable at the beggining
	CStash intStash, stringStash;
	int i;
	char *cp;
	ifstream in;
	string line;
	const int buffsize=80;
	//now remember ot initialize the variables;
	initialize(&intStash, sizeof(int));
	for(i=0;i < 100;i++)
		add(&intStash, &i);
	for(i=0;i < count(&intStash);i++)
		cout<< "fetch(&intStash, " <<i<< ") ="
			<< *(int*)fetch(&intStash, i)
			<<endl;
	//hoold 80-character strings
	initialize(&stringStash,sizeof (char) * buffsize);
	in.open("clib_test.cpp");
	assert(in);
	while(getline(in,line))
		add(&stringStash,line.c_str());
	i=0;
	while((cp=(char*)fetch(&stringStash,i++))!=0)
		cout <<"fetch(&stringStash), " <<i<< " ) ="
			<<cp<<endl;
	cleanup(&intStash);
	cleanup(&stringStash);
}
