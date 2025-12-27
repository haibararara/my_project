#include "monitor.h"
#include "temu.h"
#include "reg.h"
#include "monitor/expr.h"

#include <stdlib.h>
#include <readline/readline.h>
#include <readline/history.h>

void cpu_exec(uint32_t);
void display_reg();

/* We use the `readline' library to provide more flexibility to read from stdin. */
char* rl_gets() {
	static char *line_read = NULL;

	if (line_read) {
		free(line_read);
		line_read = NULL;
	}

	line_read = readline("(temu) ");

	if (line_read && *line_read) {
		add_history(line_read);
	}

	return line_read;
}

static int cmd_c(char *args) {
	cpu_exec(-1);
	return 0;
}

static int cmd_q(char *args) {
	return -1;
}

static int cmd_si(char *args) {
	if (args == NULL) {
		cpu_exec(1);
	} else {
		int n = atoi(args);
		if (n > 0) {
			cpu_exec(n);
		} else {
			printf("Invalid argument for si: %s\n", args);
		}
	}
	return 0;
}

static int cmd_info(char *args) {
	if (args == NULL) {
		printf("Usage: info <subcommand>\n");
		printf("Subcommands: r - register status\n");
		return 0;
	}
	
	if (strcmp(args, "r") == 0) {
		display_reg();
	} else {
		printf("Unknown subcommand: %s\n", args);
	}
	return 0;
}

static int cmd_x(char *args) {
    if(args == NULL) {
        printf("Usage: x N EXPR\n");
        printf("Example: x 10 $t0\n");
        return 0;
    }
    
    // 解析参数：N EXPR
    char *n_str = strtok(args, " ");
    char *expr_str = strtok(NULL, "");
    
    if(n_str == NULL || expr_str == NULL) {
        printf("Usage: x N EXPR\n");
        return 0;
    }
    
    int n = atoi(n_str);
    if(n <= 0) {
        printf("N must be positive\n");
        return 0;
    }
    
    // 计算表达式值
    bool success;
    uint32_t addr = expr(expr_str, &success);
    
    if(!success) {
        printf("Invalid expression: %s\n", expr_str);
        return 0;
    }
    
    // 显示内存内容
    printf("Memory at 0x%08x:\n", addr);
    for(int i = 0; i < n; i++) {
        if(i % 4 == 0) {
            printf("0x%08x: ", addr + i*4);
        }
        
        uint32_t val = mem_read(addr + i*4, 4);
        printf("0x%08x ", val);
        
        if(i % 4 == 3) {
            printf("\n");
        }
    }
    if(n % 4 != 0) {
        printf("\n");
    }
    
    return 0;
}

static int cmd_help(char *args);

static struct {
	char *name;
	char *description;
	int (*handler) (char *);
} cmd_table [] = {
	{ "help", "Display informations about all supported commands", cmd_help },
	{ "c", "Continue the execution of the program", cmd_c },
	{ "q", "Exit TEMU", cmd_q },
	{ "si", "Step one instruction exactly", cmd_si },
	{ "info", "Print program status", cmd_info },
	{ "x", "Scan memory", cmd_x }
	/* TODO: Add more commands later */
};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

static int cmd_help(char *args) {
	/* extract the first argument */
	char *arg = strtok(NULL, " ");
	int i;

	if(arg == NULL) {
		/* no argument given */
		for(i = 0; i < NR_CMD; i ++) {
			printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
		}
	}
	else {
		for(i = 0; i < NR_CMD; i ++) {
			if(strcmp(arg, cmd_table[i].name) == 0) {
				printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
				return 0;
			}
		}
		printf("Unknown command '%s'\n", arg);
	}
	return 0;
}

void ui_mainloop() {
	while(1) {
		char *str = rl_gets();
		char *str_end = str + strlen(str);

		/* extract the first token as the command */
		char *cmd = strtok(str, " ");
		if(cmd == NULL) { continue; }

		/* treat the remaining string as the arguments,
		 * which may need further parsing
		 */
		char *args = cmd + strlen(cmd) + 1;
		if(args >= str_end) {
			args = NULL;
		}

		int i;
		for(i = 0; i < NR_CMD; i ++) {
			if(strcmp(cmd, cmd_table[i].name) == 0) {
				if(cmd_table[i].handler(args) < 0) { return; }
				break;
			}
		}

		if(i == NR_CMD) { printf("Unknown command '%s'\n", cmd); }
	}
}

