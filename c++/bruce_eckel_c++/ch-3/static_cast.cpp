//static_cast.cpp

void func(int){}
int main(){
	int i =0x7fff;
	long l;
	float f;
	//typical castless converstion
	l=i;
	f=i;
	//also works
	l=static_cast<long>(i);
	f=static_cast<float>(i);
	//narrowing conversion
	i=l;
	i=f;
	//says "i know." eliminated warnings;
	i=static_cast<int>(l);
	i=static_cast<int>(f);
	char c=static_cast<char>(i);

	//forcing a conversion from void *
	void *vp=&i;
	//old way produces a dangerous conversion
	float *fp=(float *)vp;
	//the new way equally dangerous
	fp=static_cast<float *>(vp);
	//implicit type conversion, normally
	//performed by the compiler.
	double d=0.0;
	int x=d;//automatic type conversion
	x = static_cast<int>(d);//more explicit
	func(d);//automatic type conversion
	func(static_cast<int>(d));//more explicit
}	
