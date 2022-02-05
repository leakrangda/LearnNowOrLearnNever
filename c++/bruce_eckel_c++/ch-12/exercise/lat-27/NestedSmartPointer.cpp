//:C12:NestedSmartPointer.cpp
#include <iostream>
#include <vector>
#include "../require.h"
using namespace std;

class Obj{
	static int i, j;
	public:
		void f(){cout<<i++<<endl;}
		void g(){cout<<j++<<endl;}
};

//Static member definitions:
int Obj::i = 47;
int Obj::j = 11;

//Container:
class ObjContainer{
	vector<Obj*>a;
	public:
		typedef void(Obj::*PMF)();		
		void add(Obj* obj){a.push_back(obj);}
		class SmartPointer;
		friend class SmartPointer;
		class SmartPointer{
			ObjContainer& oc;
			unsigned int index;
			PMF pmf;
			public:
				SmartPointer(ObjContainer& objc):oc(objc){
					index=0;
				}
				//return value inidcates end of list:
				bool operator++(){//prefix
					if(index >=oc.a.size())return false;
					if(oc.a[++index] == 0)return false;
					return true;
				}
				Obj* operator->()const{
					require(oc.a[index] != 0, "zero value "
							"returned by smartPointer"
							"::operator->()");
					return oc.a[index];
				}
				void operator->*(PMF arg)const{
					return *oc.a[index];
		};
		//Function to produce a smart pointer that
		//points to the beginning of the ObjContainer:
		SmartPointer begin(){
			return SmartPointer(*this);
		}
};

int main(){
	const int sz = 10;
	Obj o[sz];
	ObjContainer oc;
	for(int i=0;i < sz;i++)
		oc.add(&o[i]);	//fill it up
	ObjContainer::SmartPointer sp = oc.begin();
	do{
		sp->f();	//Pointer dereference operator call
		sp->g();
	}while(++sp);
}
