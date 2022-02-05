//:C12:ReferenceCounting.cpp
//Reference count, copy-on-write
//
#include "../require.h"
#include <string>
#include <iostream>
using namespace std;

class Dog{
	string nm;
	int refcount;
	Dog(const string& name)
		: nm(name), refcount(1){
			cout<<"creating dog: " <<*this<<endl;
		}
	// Prevent assignment:
	Dog& operator=(const Dog& rv);
	public:
		//Dogs can only be created on the heap:
		static Dog* make(const string& name){
			return new Dog(name);
		}
		Dog(const Dog& d)
			:nm(d.nm + " copy"),refcount(1){
				cout<<"Dog copy-constructor: "
					<<*this<<endl;
			}
		~Dog(){
			cout<<"Deleteing Dog: "<<*this<<endl;
		}
		void attach(){
			++refcount;
			cout<<"attached Dog: "<<*this<<endl;
		}
		void detach(){
			require(refcount != 0);
			cout<<"Detaching Dog: "<<*this<<endl;
			//Destroy object if no one is using it:
			if(--refcount==0)delete this;
		}
		//conditionally copy this dog.
		//call before mmodifying the dog, assign
		//resulting pointerto your Dog*.
		Dog* unalias(){
			cout<<"Unaliasing Dog: "<<*this<<endl;
			//Don't duplicate if not aliased:
			if(refcount == 1) return this;
			--refcount;
			//use copy-constructor to duplicate:
			return new Dog(*this);
		}
		void rename(const string& newName){
			nm = newName;
			cout<<"Dog renamed to: "<<*this<<endl;
		}
		friend ostream& 
			operator<<(ostream& os, const Dog& d){
				return os<<"["<<d.nm<<"],rc = "
					<<d.refcount;
			}
};
class DogHouse{
	Dog* p;
	string houseName;
	public:
		DogHouse(Dog* dog, const string& house)
			: p(dog), houseName(house){
				cout<<"Created DogHouse: "<<*this<<endl;
			}
		DogHouse(const DogHouse& dh)
			: p(dh.p), houseName("copy-constructed " +
					dh.houseName){
				p->attach();
				cout<<"DogHouse copy-constructor: "
					<<*this<<endl;
			}
		DogHouse& operator=(const DogHouse& dh){
			//Check for self-assignment:
			if(&dh != this){
				houseName = dh.houseName + " assigned";
				//clean up what you're using first:
				p->detach();
				p = dh.p;	//like copy-constructor
				p->attach();
			}
			cout<<"DogHouse operator=:"
				<<*this<<endl;
			return *this;
		}
		//Decrement refcount, conditionally destroy
		~DogHouse(){
			cout<<"DogHouse destructor: "
				<<*this<<endl;
			p->detach();
		}
		void renameHouse(const string& newName){
			houseName=newName;
		}
		void unalias(){p=p->unalias();}
		//copy-on-srite. anytime you modify the 
		//contents of the pointer you must first
		//unalias it:
		void renameDog(const string& newName){
			unalias();
			p->rename(newName);
		}
		//...or when you allow someone else access:
		Dog* getDog(){
			unalias();
			return p;
		}
		friend ostream& 
			operator<<(ostream& os, const DogHouse& dh){
				return os<<"["<<dh.houseName
					<<"] contains "<<*dh.p;
			}
};

int main(){
	DogHouse
		fidos(Dog::make("fido"),"fidoHouse"),
		spots(Dog::make("spot"), "spotHouse");
	cout<<"entering copy-contruction"<<endl;
	DogHouse bobs(fidos);
	cout<<"after copy-constructing bobs"<<endl;
	cout<<"fidos:"<<fidos<<endl;
	cout<<"spots:"<<spots<<endl;
	cout<<"bobs:"<<bobs<<endl;
	cout<<"entering spots=fidos"<<endl;
	spots=fidos;
	cout<<"after spot=fidos"<<endl;
	cout<<"spots:"<<spots<<endl;
	cout<<"entering self-assignment"<<endl;
	bobs=bobs;
	cout<<"after self-assignment"<<endl;
	cout<<"bobs:"<<bobs<<endl;
	//comment out the following lines:
	cout<<"entering rename(\"Bob\")"<<endl;
	bobs.getDog()->rename("Bob");
	cout<<"After rename(\"bob\")"<<endl;
}

