//:C12:CopyingWithPointers.cpp
// solving the pointer aliasing problem by
// duplicating what is pointed to during
// assignment and copy-construction.

#include "../require.h"
#include <string>
#include <iostream>
using namespace std;

class Dog{
	string nm;
	public:
		Dog(const string& name):nm(name){
			cout<<"creating Dog: "<<*this<<endl;
		}
		// Synthesized copy-constructor & operator=
		// are correct.
		// Crate a Dog from a Dog pointer:
		Dog(const Dog* dp, const string& msg)
			:nm(dp->nm + msg){
				cout<<"Copied dog " <<*this<<" from "
					<<*dp<<endl;
			}
		~Dog(){
			cout<<"Deleting Dog: "<<*this<<endl;
		}
		void rename(const string& newName){
			nm = newName;
			cout<<"Dog renamed to: "<<*this<<endl;
		}
		friend ostream&
			operator<<(ostream& os, const Dog& d) 
			{
				return os<<"["<<d.nm<<"]";

			}
};
class DogHouse{
	Dog* p;
	string houseName;
	public:
		DogHouse(Dog* dog, const string& name):
			p(dog), houseName(name){}
		DogHouse(const DogHouse& dh)
		:p(new Dog(dh.p,"copy-contructed")),houseName(dh.houseName 
				+ "copy-contructed"){}
		DogHouse& operator=(const DogHouse& dh){
			 //chek for self-assignment:
			 if(&dh !=this)
			 p=new Dog(dh.p,"assigned");
			 return *this;
		}
		void renameHouse (const string& newName){
			 houseName=newName;
		}
		Dog* getDog(){return p;}
		DogHouse() { delete p;}
		friend ostream&
			operator<<(ostream& os, const DogHouse& dh) {
			return os << "["<<dh.houseName<<"] contains "<<*dh.p;
		}
};
int main() {
	DogHouse fidos(new Dog ("Fido"), "FidoHouse");
	cout<<fidos<<endl;
	DogHouse fidos2 = fidos; //copy contruction
	cout<<fidos2<<endl;
	fidos2.getDog()->rename("Spot");
	fidos2.renameHouse("SpotHouse");
	cout<<fidos2<<endl;
	fidos=fidos2;//Assignment
	cout<<fidos<<endl;
	fidos.getDog()->rename("MAX");
	fidos2.renameHouse("MaxHouse");
}
