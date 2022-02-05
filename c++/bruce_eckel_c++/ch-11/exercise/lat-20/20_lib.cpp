#include "20_lib.h"

int main(){
	f2(f1());	//argument dengan nilai temporer

	T test;
	f2(test);	//argument dengan nilai non temporer
}
