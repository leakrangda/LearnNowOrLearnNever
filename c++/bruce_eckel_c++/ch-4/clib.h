//clib.h
//
//header file for a c-like library
//an array-like entity created at runtime

typedef struct CStashTag{
	int size;	//size of each space;
	int quantity;	//number of storage spaces;
	int next;	//next empty space
	//dynamically allocated array of bytes
	unsigned char* storage;
}CStash;

void initialize(CStash *s, int size);
void cleanup(CStash* s);
int add(CStash* s, const void* element);
void* fetch(CStash* s, int index);
int count(CStash *s);
void inflate(CStash* s, int increase);


