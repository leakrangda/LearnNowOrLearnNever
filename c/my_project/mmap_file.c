#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <ctype.h>

char buffer[BUFSIZ];

int main(int argc, char** argv){
	int fd=0;
	int size=0;
	int size2=0;
	int count=0;
	char* ptr1;
	char* ptr2;

	if(argc < 2){
		perror("argument error");
		exit(1);
	}
	/* open the file */
	printf("the file:%s\n", argv[1]);
	if((fd = open(argv[1], O_RDONLY | O_CREAT, 0644))== -1){
		perror("open error");		//if open cant open
		exit(1);
	}
	/* hitung ukuran file (per-byte) */
	while((count=read(fd,buffer,BUFSIZ))!=0)
			size+=count;
	size2 = size;
	/* map file */
	ptr1 = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED,
			fd, SEEK_SET); 
	if(ptr1==NULL){
		perror("mmap error");	//jika mmap gagal
		exit(1);
	}
	/* fungsi untuk merubah huruf */
	ptr2 = ptr1;
	while(size-- > 0){
		*ptr2 = toupper(*ptr2);
		ptr2++;
	}

	/* panggil munmap - simpan ke file */
	munmap(ptr1, size2);
	close(fd);
	return 0;
}
