//cpplib.h
//c-like library converted to c++
#include <vector>
struct Stash{
	int quantity;
	int next;
	int size;
	//dynamically allocated array of bytes menggunakan vector container
	std::vector<char> storage;
	//function!
	void initialize(int size);
	int add(const void* element);
	void* fetch(int index);
	int count();
};
