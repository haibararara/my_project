#ifndef __WATCHPOINT_H__
#define __WATCHPOINT_H__

#include "common.h"

typedef struct watchpoint {
	int NO;
	char expr[128];
    	uint32_t old_value;
	struct watchpoint *next;



} WP;

void init_wp_pool();
WP* new_wp();
void free_wp(WP *wp);
WP* find_wp(int NO);
bool check_wp();
void list_wp();

#endif
