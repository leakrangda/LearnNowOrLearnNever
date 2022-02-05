//7_lib.h
class Hen;
class Hen{
	public:
		void display();
		void setEgg();
		void setNest();
		class Nest{
			private:
				int b;
			public:
				void setEgg();
				class Egg{
					private:
						int a;
					public:
						void display();
						friend void Hen::setEgg();
						friend void Nest::setEgg();
				}g;
				void display();
				friend void Hen::setNest();
		}n;
};
