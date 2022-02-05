//:C10:StaticMemberFunctions.cpp
class X{
	int i;
	static int j;
	public:
		X(int ii = 0): i(ii){
			//non-static member function can access
			//static member function or data
			j = i;
		}
		int val() const {return i;}
		static int incr(){
			//!i++; //Error: static member function
			//cannot access non-static member data
			return ++jj;
		}
		static int f(){
			//! val(); //Error: static member function
			//cannot access non-static member function
			return incr();
		}
};

int X::j = 0;
int main(){
	X x;
	x* xp = &x;
	x.f();
	xp->f();
	X::f();	//only works with static members
}
