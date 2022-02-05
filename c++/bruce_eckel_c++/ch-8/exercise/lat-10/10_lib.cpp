//10_lib.cpp
//const pointer to const object
#include <iostream>
using namespace std;

//buat object
class Object{
	int a=0;
	int b=0;
	public:
		void begini();
		void begitu();
		int ini()const;
		int itu()const;
};
//definisi fungsi Object yang merubah data, bikin dulu
void Object::begini(){
	a++;
}
void Object::begitu(){
	b++;
}
//definisi fungsi Object yang tidak boleh merubah, bikin dulu
int Object::ini()const{
	return a;
}
int Object::itu()const{
	return b;
}
//global constant class, bikin dulu
const Object benda;
//bikin constant pointer ke constant object
const Object* const ptr1=&benda;

//testing
int main(){
	int d=(*ptr1).ini();	//cara satu
	int e=ptr1->itu();	//cara dua

	cout<<"d="<<d<<endl;
	cout<<"e="<<e<<endl;
#ifdef	DRBAH //ERROR
	ptr1=NULL;	//error, constant pointer to constant obj
	Object lainya;
	ptr1=&lainya;	//error, constant pointer to constant obj
#endif
	return 0;
}
