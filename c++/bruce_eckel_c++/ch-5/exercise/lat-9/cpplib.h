//cpplib.h
//c-like library converted to c++

struct Stash{
	int size;	//size of each space
	int quantity;	//number of storage spaces
	int next;	//net empty space
	//dynamically allocated array of bytes
	unsigned char* storage;
	//function!
	void initialize(int size);
	void cleanup();
	int add(const void* element);
	void* fetch(int index);
	int count();
	void inflate(int increase);
};
