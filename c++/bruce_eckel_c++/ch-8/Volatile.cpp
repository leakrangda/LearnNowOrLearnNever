//:C08:Volatile.cpp
// The volatile keyword
class Comm{
	const volatile unsigned char byte;
	volatile unsigned char flag;
	enum{ bufsize = 100}; //==static const bufsize = 100;
	unsigned char buf[bufsize];
	int index;
	public:
		Comm();
		void isr() volatile;
		char read(int index) const;
};
Comm::Comm() : index(0), byte(0),flag(0){}

//Only a demo; won't actually work
//as an interupt service routine:
void Comm::isr()volatile{
	flag = 0;
	buf[index++] = byte;
	//wrap to beginning of buffer:
	if(index >= bufsize) index = 0;
}

char Comm::read(int index) const{
	if(index < 0 || index >= bufsize)
		return 0;
	return buf[index];
}

int main(){
	volatile Comm Port;
	Port.isr();	//ok
	//! Port.read(0);	//Error, read() not volatile
}
