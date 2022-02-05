//:C10:Singleton.cpp
//Static member of same type, ensure that
//only one objcect of this type exists
//also referred to as the "singleton" pattern.
#include <iostream>
using namespace std;

class Egg{
	static Egg e;
	int i;
	Egg(int ii): i(ii){}
	Egg(const Egg&);	//prevent copy-construction
	public:
		static Egg* instance(){return &e;}
		int val()const {return i;}
};
Egg Egg::e(47);
int main(){
	//! Eggx(1);	//error	--	 cant't create an Egg
	//you can access the single instance;
	cout<<Egg::instance()->val()<<endl;
}
