#include <stdlib.h>
#include <unistd.h>

/* A handle for a temporary file created with write_temp_file. In
 * this implementation, it's just a file descriptor.*/
typedef int temp_file_handle;

/* Writes LENGTH bytes from BUFFER into a temporary file. the 
 * temporary file is immediately unlinked. Returns a handle to the temporary
 * file.
 */
temp_file_handle write_temp_file(char* buffer, size_t length){
	/*create the filename and file. the XXXXXX will be replaced with 
	 * characters that make the filename unique. */
	char temp_filename[] = "/tmp/temp_file.XXXXXX";
	int fd = mkstemp(temp_filename);

	/*unlink the file immediately, so that it will be removed when the 
	 * file descriptor is closed. */
	unlink(temp_filename);

	/*write the number of bytest to the file first. */
	write(fd, &length, sizeof(length));

	/*now write the data itself.*/
	write(fd, buffer, length);

	/*use the file descriptor as the handle for the temporary file.*/
	return fd;
}
/*reads the contents of a temporary file TEMP_FILE created with write_temp_file.
 * the return value is a newly allocated buffer of those contents, which the 
 * caller must deallocate with free. *LENGTH is set to the size of the contents,
 * in bytes. The temporary file is removed. */
char* read_temp_file(temp_file_handle temp_file, size_t* length){
	char* buffer;

	/* the TEMP_FILE handle is a file descriptor to the temporary file.*/
	int fd = temp_file;

	/* rewind to the beginning of the file. */
	lseek(fd, 0, SEEK_SET);

	/* read the size of the data in the temporary file.*/
	read(fd, length, sizeof(*length));

	/* Allocate a buffer and read the data. */
	buffer = (char*) malloc (*length);
	read(fd, buffer, *length);

	/* close the file descriptor, which will cause the temporary file to go
	 * away. */
	close(fd);
	return buffer;
}
