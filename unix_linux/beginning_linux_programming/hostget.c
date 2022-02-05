#include <sys/utsname.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(){
	char computer[BUFSIZ];
	struct utsname uts;
	if(gethostname(computer, BUFSIZ - 1) != 0 || uname(&uts) < 0){
		fprintf(stderr, "could not get host information\n");
		exit(EXIT_FAILURE);
	}
	printf("computer host name is %s\n", computer);
	printf("System is %s on %s hardware\n", uts.sysname, uts.machine);
	printf("nodename is %s\n", uts.nodename);
	printf("Version is %s, %s\n", uts.release, uts.version);
	exit(EXIT_SUCCESS);
}
