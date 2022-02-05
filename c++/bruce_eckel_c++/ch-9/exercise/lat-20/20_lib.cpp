//20_lib.cpp
//
#include "../../require.h"
#include <iostream>
#include <cstdlib>
#include <fstream>

#define BEND(x) ((x)>5 && (x)<10)?(x):-1

using namespace std;

int main(int argc, char* argv[]){
	/*if(argc <=1){
		cerr<<"error, argument kurang"<<endl;
		exit(EXIT_FAILURE);
	}*/
	requireArgs(argc, 2);
	if(BEND(argc)!=-1){
		cerr<<"error, angka harus 5..10."<<endl;
		exit(EXIT_FAILURE);
	}
	ifstream in(argv[2]);
	assure(in,argv[2]);
}	
