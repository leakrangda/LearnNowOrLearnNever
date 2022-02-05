//:C11:PmemFunDefinition.cpp
#include <iostream>
using namespace std;
class Simple2{
	public:
		int f(float)const{return 1;}
		int f(int)const{return 1;}
};
int (Simple2::*fp)(float)const;
int (Simple2::*fp2)(float)const = &Simple2::f;
int (Simple2::*fp3)(int)const = &Simple2::f;
int main(){
	Simple2 test;
	fp = &Simple2::f;
	cout<<(test.*fp3)(1)<<endl;
	cout<<(test.*fp)(1)<<endl;
}
