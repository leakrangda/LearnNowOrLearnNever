//22_lib_part2.h
#ifndef __22_LIB_PART2_H
#define __22_LIB_PART2_H
#include <iostream>

namespace Kedua{
	class T{
		public:
			T(){std::cout<<"ini T dari namespace Kedua."<<std::endl;}
			~T(){std::cout<<"object T kedua dihancurkan."<<std::endl;};
	};
}
#endif
