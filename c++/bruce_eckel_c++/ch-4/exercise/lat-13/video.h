//video.h
#include <string>
#ifndef	VIDEO_H
#define	VIDEO_H

struct Video{
	std::string title="judul disni";
	bool avail=true;
	int sum=0;
	int rent=0;

	void printTitle();
	bool checkAvail();
	int checkSum();
	int checkRent();
};
#endif
