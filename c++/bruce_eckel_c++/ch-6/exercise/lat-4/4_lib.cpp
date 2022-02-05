//goto experiment on destructor

#include <iostream>
using namespace std;

class T{
	private:
		int a;
	public:
		T(int a);
		~T();
};
T::T(int a){
	this->a=a;
}
T::~T(){
	cout<<"isi a= "<<a<<endl;
	cout<<"class dihancurkan"<<endl;
}
int main()
{
	for(int i=0; i < 10; i++){
		T t(7);
		cout<<"index ke-"<<i<<endl;
		if(i == 5)
			goto exit;
	}
exit:
	cout<<"disini adalah akhirnya"<<endl;
	return 0;
}
