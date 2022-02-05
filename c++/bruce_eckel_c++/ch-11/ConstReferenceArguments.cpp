//:C11:ConstReferenceArguments.cpp
//Passing references as const
void f(int&){}
void g(const int&){}
int main(){
	//!f(1);	//error
	g(1);
}
