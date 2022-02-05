//:C08:Mutable.cpp
//the "mutable" keyword
class Z{
	int i;
	mutable int j;
	public:
		Z();
		void f() const;
};

Z::Z() : i(0),j(0){}
void Z::f() const{
	//! i++;	//Erro -- const member function
	j++;	//OK: mutable
}

int main(){
	const Z zz;
	zz.f();	//actually changes it!
}
