#include "15_lib.h"
#include <iostream>
using namespace std;

int Bird::angka = 1;
int main(){
	Bird satu;
	Bird dua;
	Bird tiga;
	BirdHouse rumah(satu,&dua,tiga);
	cout<<rumah;
}
