//:C10:StaticArray.cpp
//Initializing static arrays in classes
class Values{
	//static const are initialized in-place:
	static const int scSize = 100;
	static const int scLong = 100;
	//Automatic counting works with static arrays.
	//Arrays, non-integral and non-const statics
	//must be initilaized externally:
	static const int scInts[];
	static const long scLongs[];
	static const float scTable[];
	static const char scLetters[];
	static int size;
	static const float scFloat;
	static float table[];
	static char letters[];
};
int Values::size = 100;
const float Values::scFloat = 1.1;
const int Values::scInts[] = {
	99, 47, 33, 11, 7
};
const long Values::scLongs[] = {
	99, 47, 33, 11, 7
};
const float Values::scTable[] = {
	1.1, 2.2, 3.3, 4.4
};
const char Values::scLetters[] = {
	'a','b','c','d','e',
	'f','g','h','i','j'
};
float Values::table[4] = {
	1.1, 2.2, 3.3, 4.4
};
char Values::letters[10] = {
	'a', 'b', 'c', 'd', 'e',
	'f', 'g', 'h', 'i', 'j'
};
int main(){ Values v;}
