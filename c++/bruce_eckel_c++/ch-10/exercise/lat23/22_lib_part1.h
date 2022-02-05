//22_lib_part1.h
#ifndef __22_LIB_PART1_H
#define __22_LIB_PART1_H
#include <iostream>

namespace Kesatu{
	class T{
		public:
			T(){std::cout<<"ini T dari namespace Kesatu."<<std::endl;}
			~T(){std::cout<<"object T kesatu dihancurkan."<<std::endl;};
	};
}
#endif
