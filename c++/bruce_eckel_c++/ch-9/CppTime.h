//:c09:cpptime.h
//A simple time class

#ifndef CPPTIME_H
#define CPPTIME_H
#include <ctime>
#include <cstring>

class Time{
	std::time_t t;
	std::tm local;
	char asciiRep[20];
	unsigned char lflag, aflag;
	void updateLocal(){

		if(!lflag){
			local = *std::localtime(&t);
			lflag++;
		}
	}
	void updateAscii(){
		if(!aflag){
			updateLocal();
			std::strcpy(asciiRep, std::asctime(&local));
			aflag++;
		}
	}
	public:
		Time(){mark();}
		void mark(){
			lflag = aflag=0;
			std::time(&t);
		}
		const char* ascii(){
			updateAscii();
			return asciiRep;
		}
		//Difference in seconds
		int delta(Time* dt)const {
			return int(std::difftime(t, dt->t));
		}
		int daylightSavings(){
			updateLocal();
			return local.tm_isdst;
		}
		int dayOfYear(){	//since january
			updateLocal();
			return local.tm_yday;
		}
		int dayOfWeek(){
			updateLocal();
			return local.tm_wday;
		}
		int since1900(){	//year since 1900
			updateLocal();
			return local.tm_year;
		}
		int month(){	//since january
			updateLocal();
			return local.tm_mon;
		}
		int dayOfMonth(){
			updateLocal();
			return local.tm_mday;
		}
		int hour(){
			updateLocal();
			return local.tm_hour;
		}
		int minute(){
			updateLocal();
			return local.tm_min;
		}
		int second(){
			updateLocal();
			return local.tm_sec;
		}
};
#endif
