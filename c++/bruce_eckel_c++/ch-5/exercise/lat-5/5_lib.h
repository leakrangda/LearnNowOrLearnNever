//5_lib.h
class T;
class R{
	public:
		void f(T *);
};
class S{
	private:
		int b;
	public:
		void g(T *);
};
class T{
	private:
		int a;
	public:
		friend S;
		friend void R::f(T *);
		void show();
};
