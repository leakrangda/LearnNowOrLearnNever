//SuperVar.h
#ifndef	SUPERVAR_H
#define SUPERVAR_H
	enum VAR{
#ifdef _CHR_	
		character,
#endif
#ifdef _INT_	
		integer,
#endif
#ifdef _FLOAT_
		floating_point
#endif
	};
class SuperVar{
	union{
		char c;
		int i;
		float f;
	};	//anonymous union
	public:
		SuperVar(char ch);
		SuperVar(int ii);
		SuperVar(float ff);
		void print(VAR);
};
#endif
