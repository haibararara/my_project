#ifndef __MONITOR_H__
#define __MONITOR_H__

#include "common.h"

enum { STOP, RUNNING, END };
extern int temu_state;

void display_reg();
void init_monitor(int argc, char *argv[]);
void restart();
void ui_mainloop();
void cpu_exec(uint32_t n);

#endif
