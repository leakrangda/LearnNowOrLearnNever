class T{
	int i;
	public:
		T(int arg=0):i(arg){}
		T operator++(int){		//postfix
			int temp=i;
			i++;
			return T(temp);
		}
		T& operator++(){		//prefix
			i++;
			return *this;
		}
};
int main(){
	T test;

	test++;
	++test;
}
