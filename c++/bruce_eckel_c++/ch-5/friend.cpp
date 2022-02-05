//c05:friend.cpp
//friend allows special access
//
//Ceclaration (incomplete type specification):
struct X;

struct Y{
	void f(X*);
};

struct X{
	//Definition
private:
	int i;
public:
	void initialize();
	friend void g(X*, int);	//global friend
	friend void Y::f(X*);	//struct member friend
	friend struct Z;	//entire struct is a friend
	friend void h();
};

void X::initialize(){
	i=0;
}

void g(X* x, int i){
	x->i=i;
}
void Y::f(X* x){
	x->i=47;
}
struct Z{
	private:
		int j;
	public:
		void initialize();
		void g(X* x);
};

void Z::initialize(){
	j=99;
}
void Z::g(X* x){
	x->i +=j;
}
void h(){
	X x;
	x.i=100;	//direct data manipualtion
}
int main(){
	X x;
	Z z;
	z.g(&x);
}//
