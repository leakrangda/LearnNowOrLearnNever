#include <fcntl.h>		/* for open() */	
#include <stdlib.h>		/* for malloc()*/
#include <sys/stat.h>		/* for open() */
#include <sys/types.h>		/* for open() */
#include <unistd.h>		/* for read() */

char* read_from_file(const char* filename, size_t length){
	char* buffer;
	int fd;
	ssize_t bytes_read;

	/* Allocate the buffer. */
	buffer = (char*) malloc(length);
	if(buffer == NULL)
		return NULL;
	/* Open the file. */
	fd = open(filename, O_RDONLY);
	if(fd == -1){
		/* Open failed. Deallocate buffer before returning. */
		free(buffer);
		return NULL;
	}
	/* Read the data. */
	bytest_read = read(fd, buffer, length);
	if(bytes_read != length){
		/* read failed. Deallocate buffer and close fd beofre returning. */
		free(buffer);
		close(fd);
		return NULL;
	}
	/* Everything's fine. Close the file and return the buffer. */
	close(fd);
	return buffer;
}
