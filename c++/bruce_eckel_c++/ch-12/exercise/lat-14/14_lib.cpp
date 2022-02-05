#include <iostream>
#include "14_lib.h"
using namespace std;

int Bird::angka=1;
int main(){
	Bird merpati;
	cout<<merpati;

	Bird angsa;
	cout<<angsa;

	Bird jalak(merpati);
	cout<<jalak;

	Bird murai;
	murai = angsa;
	cout<<murai;
	
	Bird gagak;
	Bird tsubame;
	Bird elang;
	cout<<gagak;
	cout<<tsubame;
	cout<<elang;

}

