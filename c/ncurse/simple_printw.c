#include <string.h>
#include <ncurses.h>

int main(void)
{
	char mesg[]="just a string";
	int row,col;

	initscr();
	getmaxyx(stdscr,row,col);
	mvprintw(row/2,(col-strlen(mesg))/2,"%s\n",mesg);
	mvprintw(row-2,0,"this screen has %d row and %d columns\n",row,col);
	printw("try resising your window(if possible) and then run this program agian");
	refresh();
	getch();
	endwin();

	return 0;
}
