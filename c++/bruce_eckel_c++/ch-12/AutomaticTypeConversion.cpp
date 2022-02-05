//:C12: AutomaticTypeConversion.cpp
//Type conversion consturtor
class One{
	public:
		One(){}
};
class Two{
	public:
		Two(const One&){}
};
void f(Two){}

int main(){
	One one;
	f(one);		//want a Two, has a One
}

