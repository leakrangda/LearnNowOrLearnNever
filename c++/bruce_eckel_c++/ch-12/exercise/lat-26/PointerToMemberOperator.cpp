//:C12:PointerToMemberOperator.cpp
#include <iostream>
using namespace std;

class Dog{
	public:
		int run(int i)const{
			cout<<"run\n";
			return i;
		}
		int eat(int i)const{
			cout<<"eat\n";
			return i;
		}
		int sleep(int i)const{
			cout<<"ZZZ\n";
			return i;
		}
		void func1()const{
			cout<<"func1"<<endl;
		}
		void func2()const{
			cout<<"func2"<<endl;
		}
		typedef int (Dog::*PMF)(int)const;	//pointer to member func
		typedef void (Dog::*PMF2)()const;	//pointer ot member func
		//operator->* must return an object
		//that has an operator();
		class FunctionObject{
			Dog* ptr;
			PMF pmem;
			PMF2 pmem2;
			public:
				//save the object pointer and member pointer
				FunctionObject(Dog* wp, PMF pmf)
					:ptr(wp), pmem(pmf){
						cout<<"FunctionObject constructor\n";
				}	//first FunctionObject constructor
				FunctionObject(Dog* wp, PMF2 pmf2)
					:ptr(wp), pmem2(pmf2){
						cout<<"FunctionObject constructor\n";
				}	//second FunctionObject constructor
				//make the call using the object pointer
				int operator()(int i)const{
					//for function int (DOG:*)(int);
					cout<<"FunctionObject::operator()\n";
					return (ptr->*pmem)(i);	//make the call
				}
				void operator()()const{
					//for function void (DOG:*)(void);
					cout<<"FunctionObject::operator()\n";
					(ptr->*pmem2)();//make the call
				}
		};
		FunctionObject operator->*(PMF pmf){
			cout<<"operator->*"<<endl;
			return FunctionObject(this, pmf);
		}
		FunctionObject operator->*(PMF2 pmf){
			cout<<"operator->*"<<endl;
			return FunctionObject(this, pmf);
		}
};
int main(){
	Dog w;
	Dog::PMF pmf = &Dog::run;
	Dog::PMF2 pmf1;
	cout<<(w->*pmf)(1)<<endl;
	pmf = &Dog::sleep;
	cout<<(w->*pmf)(2)<<endl;
	pmf = &Dog::eat;
	cout<<(w->*pmf)(3)<<endl;
	pmf1 = &Dog::func1;
	(w->*pmf1)();
	pmf1 = &Dog::func2;
	(w->*pmf1)();
}
