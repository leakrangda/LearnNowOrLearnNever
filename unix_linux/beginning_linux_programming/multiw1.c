#include <unistd.h>
#include <stdlib.h>	//for exit()
#include <curses.h>	//for every curses function

int main(){
	WINDOW *new_window_ptr;		//local variable curses WINDOW
	WINDOW *popup_window_ptr;	//local variable curses WINDOW
	int x_loop;
	int y_loop;
	char a_letter = 'a';

	initscr();
	
	move(5, 5);			//move to y,x location in screen
	printw("%s", "Testing multiplw windows");	//insert string to screen
	refresh();			//refresh the screen
	
	for(y_loop = 0; y_loop < LINES - 1; y_loop++){	//iterate LINES - 1 over
		for(x_loop = 0; x_loop < COLS -1; x_loop++){	//iterate COLS -1
			mvwaddch(stdscr, y_loop, x_loop, a_letter);//move and add
			a_letter++;	//increment the letter
			if(a_letter > 'z')a_letter = 'a';//if letter move than 'z'
							 //make it an 'a' char
		}
	}
	refresh();			//refresh the screen
	sleep(2);			//delay for 2 seconds

	//creating new win with size 10 x 20
	new_window_ptr = newwin(10,20,5,5);	//create a new window
	mvwprintw(new_window_ptr, 2, 2, "%s", "hello world");
	mvwprintw(new_window_ptr, 5, 2, "%s",
			"Notice how very long lines wrap inside the window");
	wrefresh(new_window_ptr);
	sleep(2);			//delay for 2 seconds

	a_letter = '0';			//change the content
	for(y_loop = 0; y_loop < LINES -1; y_loop++){
		for(x_loop = 0; x_loop < COLS -1; x_loop++){
			mvwaddch(stdscr, y_loop, x_loop, a_letter);
			a_letter++;
			if(a_letter > '9')a_letter = '0';
		}
	}
	refresh();
	sleep(2);
	wrefresh(new_window_ptr);
	sleep(2);
	touchwin(new_window_ptr);
	wrefresh(new_window_ptr);
	sleep(2);

	popup_window_ptr = newwin(10,20,8,8);
	box(popup_window_ptr,'|','-');
	mvwprintw(popup_window_ptr, 5, 2, "%s", "Pop Up Window!");
	wrefresh(popup_window_ptr);
	sleep(2);

	touchwin(new_window_ptr);
	wrefresh(new_window_ptr);
	sleep(2);
	wclear(new_window_ptr);
	wrefresh(new_window_ptr);
	sleep(2);
	delwin(new_window_ptr);
	touchwin(popup_window_ptr);
	wrefresh(popup_window_ptr);
	sleep(2);
	delwin(popup_window_ptr);
	touchwin(stdscr);
	refresh();
	sleep(2);
	endwin();
	exit(EXIT_SUCCESS);
}


