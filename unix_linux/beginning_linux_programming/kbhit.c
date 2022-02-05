#include <stdio.h>
#include <stdlib.h>
#include <termios.h>
#include <term.h>
#include <curses.h>
#include <unistd.h>

static struct termios initial_settings, new_settings;
static int peek_character = -1;
void init_keyboard();
void close_keyboard();
int kbhit();
int readch();

int main(){
	int ch = 0;

	init_keyboard();
	while(ch != 'q'){
		printf("looping\n");
		sleep(1);
		if(kbhit()){
			ch = readch();
			printf("yout hit %c\n", ch);
		}
	}
	close_keyboard();
	exit(EXIT_SUCCESS);
}
/*set settingan yang diperlukan*/
void init_keyboard(){
	tcgetattr(0, &initial_settings);
	new_settings = initial_settings;
	new_settings.c_lflag &= ~ICANON;
	new_settings.c_lflag &= ~ECHO;
	new_settings.c_lflag &= ~ISIG;
	new_settings.c_cc[VMIN] = 1;
	new_settings.c_cc[VTIME] = 0;
	tcsetattr(0, TCSANOW, &new_settings);
}
/*kembalikan settingan pada awal*/
void close_keyboard(){
	tcsetattr(0, TCSANOW, &initial_settings);
}
/*fungsi untuk mengechek penekanan tombol*/
int kbhit(){
	char ch;
	int nread;
	if(peek_character != -1)
		return 1;
	new_settings.c_cc[VMIN] = 0;
	tcsetattr(0, TCSANOW, &new_settings);
	nread = read(0, &ch, 1);
	new_settings.c_cc[VMIN] = 1;
	tcsetattr(0, TCSANOW, &new_settings);
	if(nread == 1){
		peek_character = ch;
		return 1;
	}
}
/*fungsi untuk membaca character yang telah diterima*/
int readch(){
	char ch;
	if(peek_character != -1){
		ch = peek_character;
		peek_character = -1;
		return ch;
	}
	read(0, &ch, 1);
	return ch;
}
