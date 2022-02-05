#include <ncurses.h>

typedef struct _win_broder_struct{
	chtype ls,rs,ts,bs,tl,tr,bl,br;
}WIN_BORDER;

typedef struct _WIN_struct{
	int startx, starty;
	int height, width;
	WIN_BORDER border;
}WIN;

void init_win_params(WIN *p_win);
void print_win_params(WIN *p_win);
void create_box(WIN *win, bool flag);

/*WINDOW *create_newwin(int height, int width, int starty, int startx);
void destroy_win(WINDOW *local_win);*/

int main(int argc, char **argv)
{
	WIN win;
	int ch;

	/*WINDOW *my_win;
	int startx, starty, width, height;
	int ch;*/

	initscr();
	start_color();
	cbreak();
	keypad(stdscr, TRUE);	/*untuk bisa menginput F1*/
	noecho();

	init_pair(1,COLOR_CYAN, COLOR_BLACK);
	init_win_params(&win);
	print_win_params(&win);

	/*height=3;
	width=10;
	starty=(LINES-height)/2;
	startx=(COLS-width)/2;*/

	attron(COLOR_PAIR(1));
	printw("Press f1 to exit");
	refresh();
	attroff(COLOR_PAIR(1));

	/*my_win=create_newwin(height, width, starty, startx);*/
	create_box(&win, TRUE);
	while((ch=getch())!=KEY_F(1)){
		switch(ch){
		case KEY_LEFT:
			/*
			destroy_win(my_win);
			my_win=create_newwin(height,width,starty,--startx);
			if(startx <0)
				startx=COLS;*/

			create_box(&win,FALSE);
			--win.startx;
			create_box(&win, TRUE);
			break;
		case KEY_RIGHT:
			/*
			destroy_win(my_win);
			my_win=create_newwin(height,width,starty,++startx);
			if(startx>COLS)
				startx=0;*/
			create_box(&win,FALSE);
			++win.startx;
			create_box(&win, TRUE);
			break;
		case KEY_UP:
			/*
			destroy_win(my_win);
			my_win=create_newwin(height,width,--starty,startx);
			if(starty < 0)
				starty=LINES;*/
			create_box(&win,FALSE);
			--win.starty;
			create_box(&win,TRUE);
			break;
		case KEY_DOWN:
			/*
			destroy_win(my_win);
			my_win=create_newwin(height,width,++starty,startx);
			if(starty>LINES)
				starty=0;*/
			create_box(&win, FALSE);
			++win.starty;
			create_box(&win, TRUE);
			break;
		}
	}
	endwin();
	return 0;
}

WINDOW *create_newwin(int height, int width, int starty, int startx)
{
	WINDOW *local_win;
	local_win=newwin(height, width, starty, startx);
	box(local_win,0,0);
	wrefresh(local_win);
	return local_win;
}
void destroy_win(WINDOW *local_win)
{
	wborder(local_win,' ',' ',' ',' ',' ',' ',' ',' ');
	wrefresh(local_win);
	delwin(local_win);
	
}
void init_win_params(WIN *p_win)
{
	p_win->height=3;
	p_win->width=10;
	p_win->starty=(LINES - p_win->height) / 2;
	p_win->startx=(LINES - p_win->width)/2;

	p_win->border.ls='|';
	p_win->border.rs='|';
	p_win->border.ts='-';
	p_win->border.bs='-';
	p_win->border.tl='+';
	p_win->border.tr='+';
	p_win->border.bl='+';
	p_win->border.br='+';
}
void print_win_params(WIN *p_win)
{
#ifdef _DEBUG
	mvprintw(25,0,"%d %d %d %d",p_win->startx,p_win->starty,
		p_win->width,p_win->height);
	refresh();
#endif
}
void create_box(WIN *p_win, bool flag)
{
	int i, j;
	int x, y, w, h;

	x=p_win->startx;
	y=p_win->starty;
	w=p_win->width;
	h=p_win->height;

	if(flag==TRUE){
		mvaddch(y,x,p_win->border.tl);
		mvaddch(y,x+w,p_win->border.tr);
		mvaddch(y+h,x,p_win->border.bl);
		mvaddch(y+h,x+1,p_win->border.br);
		mvhline(y,x+1,p_win->border.ts,w-1);
		mvhline(y+h,x+1,p_win->border.bs,w-1);
		mvhline(y+1,x,p_win->border.ls,h-1);
		mvhline(y+1,x+w,p_win->border.rs,h-1);
	}
	else
		for(j=y;j <=y+h; ++j)
			for(i=x;i <= x+w;++i)
				mvaddch(j,i,' ');
	refresh();
}
