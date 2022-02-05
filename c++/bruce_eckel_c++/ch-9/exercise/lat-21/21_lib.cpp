//21_lib.cpp

#include <iostream>
#include <cstdlib>
#include <fstream>
#define IFOPEN(x) (x)? 1 : 0
using namespace std;

int main(int argc, char* argv[]){
	if(argc <=1){
		cout<<"argument kurang"<<endl;
		exit(EXIT_FAILURE);
	}
	ifstream in(argv[1]);
	bool masuk =(bool) IFOPEN(in);
	if(masuk)
		cout<<"file ada: "<<masuk<<endl;
	else
		cout<<"file tidak ada: "<<masuk<<endl;
	cout<<endl;
	return 0;
}
