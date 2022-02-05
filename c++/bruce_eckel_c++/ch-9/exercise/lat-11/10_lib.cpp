//10_lib.cpp
#include <iostream>
#include "10_lib.h"
using namespace std;

int main(){
	Color color;

	switch(color.getColor()){
		case yellow:
			cout<<"color: yellow"<<endl;
			break;
		case blue:
			cout<<"color: blue"<<endl;
			break;
		case red:
			cout<<"color: red"<<endl;
			break;
		default:
			cout<<"unknown color"<<endl;
	}
	return 0;
}
