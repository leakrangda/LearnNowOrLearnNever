#include <iostream>
#include <fstream>
#include <string>
#include "sslib.h"

using namespace std;
int main(void)
{
	Sslib container;
	ifstream file("sslib.cpp");

	container.sslibInit();
	container.setIterator(5);
	container.setStash(file);
	container.showDat();
	file.close();
	return 0;
}
