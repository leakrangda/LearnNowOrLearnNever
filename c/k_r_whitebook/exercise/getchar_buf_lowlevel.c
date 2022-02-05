#include "k_r.h"

/* getchar: simple buffered version */
int getchar_buf(void){
	static char buf[5];		/*buat buffer*/
	static char *bufp = buf;	/*pindahkan pointer dari buf*/
	static int n = 0;

	if(n == 0){	/*buffer is empty*/
		n = read(0, buf, sizeof buf);
		bufp = buf;
	}
	/*jika sudah ada isi, keluarin pointer kalau gak -1*/
	return (--n >= 0) ? (unsigned char) *bufp++ : -1;
}
