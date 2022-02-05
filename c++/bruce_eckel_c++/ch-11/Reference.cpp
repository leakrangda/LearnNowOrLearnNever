//: C11: Reference.cpp
//Simple C++ reference

int* f(int*x){
	(*x)++;
	return x;	//safe, x is outside this scope
}
int& g(int& x){
	x++;		//same effect as in f()
	return x;	//safe, outside this scope
}

int& h(){
	int a;
	//! return a;	//error
	static int x;
	return x;	//safe, x live outside this scope
}

int main(){
	int a = 0;
	f(&a);	//ugly, (but explicit)
	g(a);	//clean, but hidden
}
