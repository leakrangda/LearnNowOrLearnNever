//14_lib.h
#ifndef _LIB_H
#define _LIB_H

class IntStack{
	private:
		/*cheshire cat method*/
		class IntStack;
		IntStack* smile;

		int sz=100;
		int ar[100];
		int top=-1;
	public:
		void push(int x);
		int pop();
		int peek();
};
#endif
