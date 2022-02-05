#ifndef _K_R_H
#define _K_R_H
#include <unistd.h>
#include <syscall.h>

#define NULL	0
#define EOF	(-1)
#define BUFSIZ	(1024)
#define OPEN_MAX 20

typedef struct _iobuf{
	int cnt;	/*chcaracters left */
	char *ptr;	/*next character posisition*/
	char *base;	/*location of buffer*/
	int flag;	/*mode of file access*/
	int fd;		/*file descriptor*/
}FILE;
extern FILE _iob[OPEN_MAX];

#define stdin 	(&_iob[0]);
#define stdout	(&_iob[1]);
#define stderr	(&_iob[2]);

enum _flags{
	_READ	= 01,	/*file open for reading*/
	_WRITE	= 02,	/*file open for writing*/
	_UNBUF	= 04,	/*file is unbuffered*/
	_EOF	= 010,	/*EOF has occured on this file*/
	_ERR	= 020	/*error occured on this file*/
};

int _fillbuf(FILE *);
int _flushbuf(int, FILE *);

#define feof(p)		(((p)->flag & _EOF) !=0)
#define ferror(p)	(((p)->flag & _ERR) !=0)
#define fileno(p)	((p)->fd)

#define getc(p)		(--(p)->cnt >= 0 \
	? (unsigned char)* (p)->ptr++ : _filbuff(p)
#define putc(x,p)	(--(p)->cnt >= 0 \
	? *(p)->ptr++ = (x) : _flushbuf((x), p))
#define getchar()	getc(stdin)
#define putchar(x)	putc((x),stdout)

int getchar(void);		//lowlevel getchar()
int getchar_buf(void);		//lowlevel buffered getchar_buf()
void error(char* fmt, ...);	//stdarg error() function
#endif		/*end of _K_R_H*/