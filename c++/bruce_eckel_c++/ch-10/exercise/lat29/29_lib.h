//29_lib.h
#ifndef __29_LIB_H
#define __29_LIB_H
#include <iostream>
#include <string>

class T{
	std::string str;
	public:
		T(std::string arg=""):str(arg){std::cout<<"T object is created"<<std::endl;}
		~T(){
			std::cout<<"T object is deleted."<<std::endl;
		}
		void print()const{
			std::cout<<"str = "<<str<<std::endl;
		}
};
class U{
	static T arr1[];
	const static T arr2[];
	public:
		U(){std::cout<<"U object is created."<<std::endl;}
		static void print(){
			int i=0;
			while(i < 4){
				std::cout<<"arr1["<<i<<"].str= ";
				arr1[i].print();
				std::cout<<std::endl;
				i++;
			}
			i=0;
			while(i < 4){
				std::cout<<"arr2["<<i<<"].str= ";
				arr2[i].print();
				std::cout<<std::endl;
				i++;
			}
		}
		~U(){std::cout<<"U object is deleted."<<std::endl;}
};

//static data, initialize exactly once, anywhere before the object is created.
T U::arr1[]={T("let me sing my song"),T("on the stage, on my own"),
		T("let me say my words"), T("whishing they will be heard")};
const T U::arr2[]={T("i saw you smiling at me"), T("was is it real, or just my fantasy"),T("you always be there in the corner"), T("in this little bar")};
#endif	//endof 29_lib.h
