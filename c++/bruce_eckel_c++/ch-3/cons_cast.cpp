//const_cast.cpp
int main(){
	const int i=0;
	int * j=(int *)&i;//deprecated form
	j=const_cast<int*>($i);//prefered
	//cant do simultanous additional casting:
	//! long * l= const_cast<long*>(&i);//error
	volatile int k=0;
	int *u=const_cast<int *>(&k);
}
