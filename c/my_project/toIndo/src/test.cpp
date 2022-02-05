#include <fstream>
#include <iostream>
#include <string>
using namespace std;

int main(int argc, char** argv){
	ofstream out("output.txt");
	ifstream input1;
	ifstream input2;
	input1.open(argv[1]);		//using open() explicitly

	char line[255];
	while(input1.getline(line,254))
		out<<line<<'\n';
	input1.close();
	input2.close();

}
