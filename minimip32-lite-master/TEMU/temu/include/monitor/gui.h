#ifndef __GUI_H__
#define __GUI_H__

#include "common.h"

void init_gui(int *argc, char ***argv);
void run_gui();
void close_gui();
void gui_console_printf(const char *format, ...);

#endif
