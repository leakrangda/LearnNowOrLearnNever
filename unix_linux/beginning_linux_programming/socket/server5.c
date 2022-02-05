#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <sys/time.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <stdlib.h>

int main(){
	int server_sockfd, client_sockfd;
	int server_len, client_len;
	struct sockaddr_in server_address;
	struct sockaddr_in client_address;
	int result;
	fd_set readfds, testfds;

	/* create and name a socket for the server */
	server_sockfd= socket(AF_INET, SOCK_STREAM, 0);

	server_address.sin_family = AF_INET;
	server_address.sin_addr.s_addr = htonl(INADDR_ANY);
	server_address.sin_port = htons(9734);
	server_len = sizeof(server_address);

	bind(server_sockfd, (struct sockaddr *)&server_address, server_len);

	/* create a connection queue and initialize readfds, to handle input 
	 * from server_socketfd
	 */
	listen(server_sockfd, 5);
	FD_ZERO(&readfds);			// clear the readfds
	FD_SET(server_sockfd, &readfds); 	// set server_sockfd in readfds

	/* now wait for clients and requests. Because you have passed
	 * a null pointer as the timeout parameter, no timeout will occur.
	 * the programm will exit and report error if select return a value less
	 * than 1:
	 */
	while(1){
		char ch;
		int fd;
		int nread;

		testfds = readfds;

		printf("server waiting\n");
		result = select(FD_SETSIZE, &testfds, (fd_set *)0, (fd_set *)0,
					 (struct timeval *)0);
		if(result < 1){
			perror("server5:");
			exit(1);
		}

		/* once you know you've got activity, you can find which descriptor
		 * it's on by checking each in turn using FD_ISSET:
		 */
		for(fd = 0; fd < FD_SETSIZE; fd++){
			if(FD_ISSET(fd, &testfds)){
				/* if the activity is on server_sockfd, it must be
				 * request for a new conncetion, and you add the
				 * associated client_sockfd to the descriptor set
				 */
				if(fd == server_sockfd){
					client_len = sizeof(client_address);
					client_sockfd = accept(server_sockfd,
						(struct sockaddr *)&client_address,
						&client_len);
					FD_SET(client_sockfd, &readfds);
					printf("adding client on fd %d\n",
							client_sockfd);
				}
				/* if isn't the server, it must be client activity.
				 * if close is received, the client has gone away, 
				 * and you remove it from the descriptor set.
				 * Otherwise, you "serve" the client as in the
				 * previous example
				 */
				else{
					ioctl(fd, FIONREAD, &nread);
					if(nread == 0){
						close(fd);
						FD_CLR(fd, &readfds);
						printf("removing" 
							" client on fd %d\n", fd);
					}
					else{
						read(fd, &ch, 1);
						sleep(5);
						printf("serving"
							" client on fd %d\n", fd);
						ch++;
						write(fd, &ch, 1);
					}
				}
			}
		}
	}
}

				

