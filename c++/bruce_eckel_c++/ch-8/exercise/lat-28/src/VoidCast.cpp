//void* cast example
#include "Bird.h"
#include "Rock.h"
#include <iostream>
using namespace std;

int main(){
	Rock sprite; //batu tidak bisa terbang
	void *ptr=&sprite;	//pointer ke batu sprite
	Bird* gereja=(Bird*)ptr;//isi alamat batu ke alamat gereja
	gereja->fly();//panggil gereja yang bisa terbang
	//Menakjubkan!!
	return 0;
}
