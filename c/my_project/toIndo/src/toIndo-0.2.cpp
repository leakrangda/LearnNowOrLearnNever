#include <iostream>
#include <fstream>
#include "indonesia-0.2.h"
using namespace std;

int main(int argc, char** argv){
	if(argc < 2){	//stdin mode
		//Indo test;
		//cout<<test.convert()<<endl;
	}
	else if(argc == 2){
		Indo test(argv[1]);
		test.toIn();
		cout<<test.result()<<endl;
	}
	else{
		cerr<<"terlalu banyak argument, penggunaan "
			"toIndo [<file>]";
		return EXIT_FAILURE;
	}
	return 0;
}
