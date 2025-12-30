#include "monitor/gui.h"

void init_monitor(int, char *[]);
void restart();
void ui_mainloop();

int main(int argc, char *argv[]) {
    /* 如果有-gui参数，启动图形界面 */
    int use_gui = 0;
    for(int i = 1; i < argc; i++) {
        if(strcmp(argv[i], "-gui") == 0) {
            use_gui = 1;
            // 移除这个参数
            for(int j = i; j < argc - 1; j++) {
                argv[j] = argv[j + 1];
            }
            argc--;
            break;
        }
    }
    
    /* Initialize the monitor. */
    init_monitor(argc, argv);
    
    /* Initialize the virtual computer system. */
    restart();
    
    if(use_gui) {
        /* 图形界面模式 */
#ifdef USE_GUI
        init_gui(&argc, &argv);
        run_gui();
        close_gui();
#else
        printf("ERROR: GUI support not compiled in!\n");
        return 1;
#endif
    } else {
        /* 命令行模式 */
        ui_mainloop();
    }
    
    return 0;
}
