#include <time.h>
#include <stdio.h>

int main(void)
{
	time_t t = time(NULL);
	struct tm infotime= *localtime(&t);
	printf("now: %d-%d-%d:%d:%d:%d\n",infotime.tm_year+1900,infotime.tm_mon+1,infotime.tm_mday,infotime.tm_hour,infotime.tm_min,infotime.tm_sec);
	return 0;
}
