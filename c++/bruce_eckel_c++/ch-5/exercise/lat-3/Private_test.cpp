//private_test.cpp
//testing of friend function to be granted permission to access
//private member of a class

class T{
	private:
		int a;
	public:
		friend void f(T obj);
};

void f(T obj){
	obj.a=10;
}

int main()
{
	T t;

	f(t);
}

