//16_lib.cpp
#include <iostream>
#include <cstdlib>
#include <string>
#define DEBUG(x) cout<<#x " = "<<x<<endl
using namespace std;

int main(int argc, char* argv[]){
	if(argc <= 1){
		cout<<"argument kurang."<<endl;
		exit(EXIT_FAILURE);
	}
	string s(argv[1]);
	while(s.length()!=0){
		DEBUG(s);
		s.pop_back();
	}
	return 0;
}
