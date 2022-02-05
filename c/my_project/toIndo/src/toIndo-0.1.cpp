#include <iostream>
#include <fstream>
#include "indonesia.h"
using namespace std;

int main(int argc, char** argv){
	if(argc < 2){	//stdin mode
		//Indo test;
		//cout<<test.convert()<<endl;
	}
	else if(argc == 2){
		Indo test(argv[1]);
		cout<<test.convert()<<endl;
	}
	else{
		cerr<<"terlalu banyak argument, penggunaan "
			"toIndo [<file>]";
		return EXIT_FAILURE;
	}
	return 0;
}
