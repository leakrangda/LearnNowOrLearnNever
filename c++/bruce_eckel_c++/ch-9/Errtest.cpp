//:c09:ErrTest.cpp
//Errtest.cpp
//testing require.h
#include "../require.h"
#include <fstream>
using namespace std;

int main(int argc, char* argv[]){
	int i = 1;
	require(i, "value must be nonzero");
	requireArgs(argc, 1);
	ifstream in(argv[1]);
	assure(in, argv[1]);	//use the file name
	ifstream nofile("nofile.xxx");
	//fails:
	//! assure(nofile);	//the default argument
	ofstream out("tmp.txt");
	assure(out);
}
