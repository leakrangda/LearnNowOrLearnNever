//c05:nestFriend.cpp
//nested friends
#include <iostream>
#include <cstring>
using namespace std;
const int sz = 20;

struct Holder{
	private:
		int a[sz];
	public:
		void initialize();
		struct Pointer;	//ealry declaration
		friend struct Pointer;
		struct Pointer{
			private:
				Holder* h;
				int* p;
			public:
				void initialize(Holder* h);
				//move around in the array;
				void next();
				void previous();
				void top();
				void end();
				//access values:
				int read();
				void set(int i);
		};
};
void Holder::initialize(){
	memset(a,0,sz * sizeof(int));
}
void Holder::Pointer::initialize(Holder* rv){
	h=rv;
	p=rv->a;
};
void Holder::Pointer::next(){
	if(p < &(h->a[sz-1]))
		p++;
}
void Holder::Pointer::previous(){
	if(p > &(h->a[0]))
		p--;
}
void Holder::Pointer::top(){
	p=&(h->a[0]);
}
void Holder::Pointer::end(){
	p=&(h->a[sz - 1]);
}
int Holder::Pointer::read(){
	return *p;
}
void Holder::Pointer::set(int i){
	*p=i;
}
int main(){
	Holder h;
	Holder::Pointer hp, hp2;
	int i;
	h.initialize();
	hp.initialize(&h);
	hp2.initialize(&h);
	for(i=0;i < sz;i++){
		cout<<"hp = "<<hp.read()
			<<", hp2 = " <<hp2.read()<<endl;
		hp.next();
		hp2.previous();
	}
}///
