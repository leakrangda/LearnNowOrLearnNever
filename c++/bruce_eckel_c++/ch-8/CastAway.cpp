//:C08:CastAway.cpp
//"Casting away" constness
class Y{
	int i;
	public:
		Y();
		void f() const;
};

Y::Y(){i = 0;}
void Y::f() const{
	//! i++;	//Error -- const member function
	((Y*)this)->i++;	//ok: cast away const-ness
	//Beter: use c++ explicit cast syntax:
	(const_cast<Y*>(this))->i++;
}

int main(){
	const Y yy;
	yy.f();	//actually changes it!
	Y yx;
	yx.f();
}
