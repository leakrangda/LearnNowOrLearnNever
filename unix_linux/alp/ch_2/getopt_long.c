#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>

/* the name of this program.*/
const char* program_name;

/*prints usage information for this program to STREAM (typically stdout or stderr),
 * and exit the program with EXIT_CODE. does not return.*/

void print_usage(FILE* stream, int exit_code){
	fprintf(stream, "usage: %s options [ inputfile..]\n", program_name);
	fprintf(stream,
		" -h --help		Display this usage information.\n"
		" -o --output filename 	write output to file.\n"
		" -v --verbose		Print verbose message.\n");
	exit(exit_code);
}

int main(int argc, char* argv[]){
	int next_option;

	/*A string listing valid short options letters.*/
	const char* const short_options = "ho:v";
	/*an array describing valid long options.*/
	const struct option long_options[] = {
		{"help", 0, NULL, 'h'},
		{"output", 1, NULL, '0'},
		{"verbose", 0, NULL, 'v'},
		{NULL, 0, NULL, 0}	/*required at the end of array*/
	};

	/*the name of the file ot receive program output,
	 * or NULL for standard output. */
	const char* output_filename = NULL;
	/*whether to display verbose message.*/
	int verbose = 0;

	/*remember the name of the program, to incorporate in messages.
	 * the name is stored in argv[0].*/
	program_name = argv[0];
	do{
		next_option = getopt_long(argc, argv, short_options,
				long_options, NULL);
		switch(next_option){
			case 'h':	/* -h or --help */
				/*user has requreste usage information
				 * print it to standard output, and exit
				 * with exit code zero (normal terminantion).*/
				print_usage(stdout, 0);
			case 'o':	/* -o or --output*/
				/*this option takes an argument, the name of the
				 * output file.*/
				output_filename = optarg;
				break;
			case 'v':	/* -v or --verobse*/
				verbose = 1;
				break;
			case '?':	/* the user specified an invalid option.*/
				/*print usage information to standard error, and
				 * exit with exit code one (indicating abnormal 
				 * termination). */
				print_usage(stderr, 1);
			default:	/*something else: unexpected. */
				abort();
		}
	}
	while(next_option != -1);
	/*done with options. OPTIND point to first nonoption argument.
	 * for demonstration purposes, print them if the verbose option was 
	 * specified. */
	if(verbose){
		int i;
		for(i = optind; i < argc; ++i)
			printf("argument: %s\n", argv[i]);
	}
	/*the main program goes here*/
	return 0;
}
