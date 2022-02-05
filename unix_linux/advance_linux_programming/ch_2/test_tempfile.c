#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

typedef int temp_file_handle;

temp_file_handle write_temp_file(char*, size_t);
char* read_temp_file(temp_file_handle, size_t*);

int main(){
	char buffer[200];
	temp_file_handle fd;

	printf("masukan data:");
	fgets(buffer,200,stdin);

	/* bersihkan dari sisa penjajahan  - eh, maksudnya newline :P */
	buffer[strlen(buffer) - 1] = '\0';
	if((fd = write_temp_file(buffer, strlen(buffer))) != -1){
		size_t len = strlen(buffer);
		char *baca=(void*)0;
		printf("sukses menulis ke file sementara\n");
		baca = read_temp_file(fd, &len);
		printf("data yang ditulis:%s\n",baca);
		free(baca);
	}else{
		perror("terjadi error");
		printf("fd = %d\n", fd);
		exit(EXIT_FAILURE);
	}
	return 0;
}
