//c06:NoJump.cpp
//can't jump past constructors

class X{
	public:
		X();
};
X::X(){};

void f(int i){
	if(i < 10){
		goto jump1;	//Error: goto bypasses init
	}
	X x1;	//constructor called here
jump1:
	switch(i){
		case 1:
			X x2;	//constructor called here
			break;
		case 2:	//Error:case bypasses init
		X x3;	//constructor called here
		break;
	}
}
int main()
{
	f(9);
	f(11);
}
