#include <unistd.h>		//linux standar library header
#include <stdlib.h>		//stdlib c library
#include <stdio.h>		//standar input c library
#include <curses.h>		//curses header

int main(){
	int i;

	initscr();
	if(!has_colors()){
		endwin();
		fprintf(stderr, "error - no color support on this terminal\n");
		exit(EXIT_FAILURE);
	}
	if(start_color() != OK){
		endwin();
		fprintf(stderr, "error - could not initialize colors\n");
		exit(EXIT_FAILURE + 1);
	}
	clear();
	mvprintw(5,5, "there are %d COLORS, and %d COLOR_PAIRS available",
			COLORS, COLOR_PAIRS);
	refresh();
	init_pair(1, COLOR_RED, COLOR_BLACK);
	init_pair(2, COLOR_RED, COLOR_GREEN);
	init_pair(3, COLOR_GREEN, COLOR_RED);
	init_pair(4, COLOR_YELLOW, COLOR_BLUE);
	init_pair(5, COLOR_BLACK, COLOR_WHITE);
	init_pair(6, COLOR_MAGENTA, COLOR_BLUE);
	init_pair(7, COLOR_CYAN, COLOR_WHITE);

	for( i = 1; i <= 7; i++){
		attroff(A_BOLD);
		attrset(COLOR_PAIR(i));
		mvprintw(5 + i, 5, "color pair %d", i);
		attrset(COLOR_PAIR(i) | A_BOLD);
		mvprintw(5 + i, 25, "Bold color pair %d", i);
		refresh();
		sleep(1);
	}
	endwin();
	exit(EXIT_SUCCESS);
}
