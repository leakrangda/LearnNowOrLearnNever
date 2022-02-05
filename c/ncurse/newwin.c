#include <ncurses.h>

int main(void)
{
	initscr();
	printw("ini string");
	refresh();
	getch();
	printw("ini window baru");
	newwin();
	getch();
	endwin()
	return 0;
}
