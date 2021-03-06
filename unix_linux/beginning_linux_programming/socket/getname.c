#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	char *host, **names, **addrs;
	struct hostent *hostinfo;

	/* set the host ot the argument supplied with getname() call, or by
	 * default to the user' machine:
	 */
	if(argc == 1){
		char myname[256];
		gethostname(myname, 255);	// unistd.h
		host = myname;
	}
	else
		host = argv[1];

	/* call gethostbyname() and report an error if no information is found */
	hostinfo = gethostbyname(host);		// netdb.h
	if(!hostinfo){
		fprintf(stderr, "cannot get info for host: %s\n", host);
		exit(1);
	}

	/* display the hostname and any aliases that it may have */
	printf("results for host %s: \n", host);
	printf("Name: %s\n", hostinfo->h_name);
	printf("Aliases:");
	names = hostinfo->h_aliases;
	while(*names){
		printf(" %s", *names);
		names++;
	}
	printf("\n");
	
	/* warn and exit if the host in question isn't an IP host: */
	if(hostinfo->h_addrtype != AF_INET){
		fprintf(stderr, "not an IP host!\n");
		exit(1);
	}

	/* otherwise, display the IP address(es) */
	addrs = hostinfo->h_addr_list;
	while(*addrs){
		printf(" %s", inet_ntoa(*(struct in_addr *)*addrs));
		addrs++;
	}
	printf("\n");
	exit(0);
}
