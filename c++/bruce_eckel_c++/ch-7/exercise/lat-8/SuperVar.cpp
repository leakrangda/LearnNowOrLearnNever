//SuperVar.cpp
#include "SuperVar.h"
#include <iostream>
using namespace std;

SuperVar::SuperVar(char ch){
	//vartype = character;
	c = ch;
}
SuperVar::SuperVar(int ii){
	//vartype = integer;
	i = ii;
}
SuperVar::SuperVar(float ff){
	//vartype = floating_point;
	f = ff;
}
void SuperVar::print(VAR var){
	switch(var){
		case character:
			cout<<"character: "<<c<<endl;
			break;
		case integer:
			cout<<"integer: " <<i <<endl;
			break;
		case floating_point:
			cout<<"floating point: "<<f<<endl;
			break;
	}
}
