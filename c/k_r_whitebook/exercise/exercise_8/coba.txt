#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>

void baca(int fd_in, int fd_out);

int main(int argc, char* argv[]){
	int fd_in=0;		//file descriptor
	int fd_out=1;
	int jumlah=argc;

	if(argc > 1)
		while(--jumlah){
			/*open file from argument*/
			if((fd_in = open(argv[argc - jumlah],O_RDONLY,0)) == -1){
				fprintf(stderr,"error opening file:fd %d,"
						"arg %d\n",fd_in, argc - jumlah);
				exit(1);
			}
			baca(fd_in,fd_out);
			/*read file*/ 
			close(fd_in);

		}
	if(argc==1)
		baca(fd_in, fd_out);

	return 0;
}
void baca(int fd_in, int fd_out){
	char c;
	while(read(fd_in,&c,1) > 0)	//selama masih bisa baca data
		write(fd_out, &c, 1);	//output to file
}
