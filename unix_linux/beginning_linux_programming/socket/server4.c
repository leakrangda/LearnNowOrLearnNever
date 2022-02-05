#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

int main(){
	int server_sockfd, client_sockfd;
	int server_len, client_len;
	struct sockaddr_in server_address;
	struct sockaddr_in client_address;

	/* create the socket */
	server_sockfd = socket(AF_INET, SOCK_STREAM, 0);

	/* add address and information about the server */
	server_address.sin_family = AF_INET;
	server_address.sin_addr.s_addr = htonl(INADDR_ANY);
	server_address.sin_port = htons(9734);
	server_len = sizeof(server_address);

	/* bind the sock server to create unnamed socket */
	bind(server_sockfd, (struct sockaddr *)&server_address, server_len);

	/* create a connection queue ignore child exit details, and waits clients*/
	listen(server_sockfd, 5);
	signal(SIGCHLD, SIG_IGN);

	while(1){
		char ch;

		printf("server waiting\n");
		
		/* accept the connection */
		client_len = sizeof(client_address);
		client_sockfd = accept(server_sockfd, 
				(struct sockaddr *)&client_address, &client_len);

		/* for to create a process for this client and perform a test
		 * to see whether you're parent or the child
		 */
		if(fork() == 0){
			/* its the child, you can now read/write to the client on
			 * sock_fd. five second delay just for demonstration
			 */
			read(client_sockfd, &ch, 1);
			sleep(5);
			ch++;
			write(client_sockfd, &ch, 1);
			close(client_sockfd);
			exit(0);
		}

		/* otherwise, you must be the parent and your work for this client
		 * is finished
		 */
		else
			close(client_sockfd);
	}
}

