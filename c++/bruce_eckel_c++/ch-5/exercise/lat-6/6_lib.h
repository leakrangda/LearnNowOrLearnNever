//6_lib.h

class Egg{
	public:
		void display();
};
class Nest{
	public:
		Egg g;
		void display();
};
class Hen{
	public:
		Nest n;
		void display();
};

