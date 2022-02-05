//:C12: AutomaticTypeConversion.cpp
//Type conversion consturtor
class One{
	public:
		One(){}
};
class Two{
	public:
		explicit Two(const One&){}
};
void f(Two){}

int main(){
	One one;
	//! f(one);		// no auto conversion allowed
	f(Two(one));		//ok--user perfoms conversion 
}


