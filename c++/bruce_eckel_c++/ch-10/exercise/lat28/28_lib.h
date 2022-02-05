//28_lib.h
#ifndef __28_LIB_H
#define __28_LIB_H
#include <iostream>

class T{
	static int arr1[];
	const static int arr2[];
	public:
		T(){std::cout<<"create T object"<<std::endl;}
		static void print(){
			for(int i=0;i < 10;i++)
				std::cout<<i+1<<"="<<arr1[i]<<",";
			std::cout<<std::endl;
			for(int i=0;i < 10;i++)
				std::cout<<i+1<<"="<<arr2[i]<<",";
			std::cout<<std::endl;
		}
		~T(){
			std::cout<<"T object is deleted."<<std::endl;
		}
};
//placed in the definition part, can be anywhere, but happen only once
//before object are created

/*int T::arr1[10]={1,2,3,4,5,6,7,8,9,10};
const int T::arr2[]={
	10,9,8,7,6,5,4,3,2,1};*/
#endif //endof 28_lib.h
