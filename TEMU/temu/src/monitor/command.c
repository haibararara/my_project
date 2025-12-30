#include "temu.h"
#include "reg.h"
#include "memory.h"
#include "monitor.h"
#include "expr.h"
#include <string.h>
#include <stdlib.h>

// 声明外部函数
extern void cpu_exec(uint32_t n);

// 命令处理函数
int handle_command(const char *cmd_line) {
    if(cmd_line == NULL || strlen(cmd_line) == 0) {
        return 0;
    }
    
    // 复制命令字符串以便解析
    char *cmd = strdup(cmd_line);
    char *cmd_copy = cmd;
    
    // 去除前后空格
    while(*cmd == ' ') cmd++;
    char *end = cmd + strlen(cmd) - 1;
    while(end > cmd && *end == ' ') *end-- = '\0';
    
    if(strlen(cmd) == 0) {
        free(cmd_copy);
        return 0;
    }
    
    int result = 0;
    
    // 解析命令
    if(strcmp(cmd, "q") == 0 || strcmp(cmd, "quit") == 0) {
        result = -1; // 退出信号
    } else if(strcmp(cmd, "c") == 0) {
        cpu_exec(-1); // 继续执行
    } else if(strcmp(cmd, "help") == 0) {
        printf("Available commands:\n");
        printf("  help           - Show this help\n");
        printf("  c              - Continue execution\n");
        printf("  si [N]         - Step N instructions (default: 1)\n");
        printf("  info r         - Show register values\n");
        printf("  x N EXPR       - Examine memory\n");
        printf("  w EXPR         - Set watchpoint\n");
        printf("  d N            - Delete watchpoint\n");
        printf("  q              - Quit\n");
    } else if(strncmp(cmd, "si", 2) == 0) {
        int n = 1;
        if(strlen(cmd) > 2) {
            n = atoi(cmd + 2);
            if(n <= 0) n = 1;
        }
        cpu_exec(n);
    } else if(strcmp(cmd, "info r") == 0) {
        // 显示寄存器
        for(int i = 0; i < 32; i++) {
            printf("%s: 0x%08x", regfile[i], reg_w(i));
            if(i % 4 == 3) printf("\n");
            else printf("\t");
        }
        printf("PC: 0x%08x\n", cpu.pc);
    } else if(strncmp(cmd, "x ", 2) == 0) {
        // 内存查看 - 简化实现
        printf("Memory examine (GUI placeholder)\n");
    } else if(strncmp(cmd, "w ", 2) == 0) {
        printf("Set watchpoint (GUI placeholder)\n");
    } else if(strncmp(cmd, "d ", 2) == 0) {
        printf("Delete watchpoint (GUI placeholder)\n");
    } else {
        printf("Unknown command: %s\n", cmd);
        printf("Type 'help' for available commands.\n");
    }
    
    free(cmd_copy);
    return result;
}
