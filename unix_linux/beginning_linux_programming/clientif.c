#define _POSIX_SOURCE
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <limits.h>
#include <sys/types.h>
#include <sys/stat.h>
#include "cd_data.h"
#include "cliserv.h"

static pid_t mypid;
static int read_one_response(message_db_t *rec_ptr);

int database_initialize(const int new_database){
	if(!client_starting()) return(0);
	mypid = getpid();
	return(1);
}/* database_initialize */

void database_close(void){
	client_ending();
}
cdc_entry get_cdc_entry(const char *cd_catalog_ptr){
	cdc_entry ret_val;
	message_db_t mess_send;
	message_db_t mess_ret;

	ret_val.catalog[0] = '\0';
	mess_send.client_pid = mypid;
	mess_send.request = s_get_cdc_entry;
	strcpy(mess_send.cdc_entry_data.catalog, cd_catalog_ptr);
	if(send_mess_to_server(mess_send)){
		if(read_one_response(&mess_ret)){
			if(mess_ret.response == r_success){
				ret_val = mess_ret.cdc_entry_data;
			}else{
				fprintf(stderr, "%s", mess_ret.error_text);
			}
		}else{
			fprintf(stderr, "Server failed to respond");
		}
	}else{
		fprintf(stderr, "Server not accepting requests\n");
	}
	return(ret_val);
}
