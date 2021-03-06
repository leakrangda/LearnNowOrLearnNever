#include <sys/types.h>
#include <sys/time.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
	char buffer[128];
	int result, nread;

	fd_set inputs, testfds;
	struct timeval timeout;

	FD_ZERO(&inputs);		// clearing inputs
	FD_SET(0, &inputs);		// set fd 0 (stdin) to inputs

	/* wait for input on stdin for maximum 2.5 seconds */
	while(1){
		testfds = inputs;
		timeout.tv_sec = 2;
		timeout.tv_usec = 500000;

		result = select(FD_SETSIZE, &testfds, (fd_set *)NULL, 
				(fd_set *)NULL, &timeout);

		/* after this time, test result. if there has been no input,
		 * the program loops again. If there has been an error,
		 * the program exits
		 */
		switch(result){
			case 0:
				printf("timeout\n");
				break;
			case -1:
				perror("select");
				exit(1);
			default:
				if(FD_ISSET(0, &testfds)){
					ioctl(0, FIONREAD, &nread);
					if(nread == 0){
						printf("keyboard done\n");
						exit(0);
					}
					nread = read(0, buffer, nread);
					buffer[nread] = 0;
					printf("read %d from keyboard: %s", nread,
							buffer);
				}
				break;
		}
	}
}
