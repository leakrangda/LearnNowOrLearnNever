//4_lib.h

const int limit=10000;

void f1();
void f2();

inline void f2(){
	for(int i=0;i < limit;i++)
		for(int i=0;i < limit;i++);
}
