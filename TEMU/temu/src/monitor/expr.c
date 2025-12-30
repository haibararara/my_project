#include "temu.h"

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>
#include <ctype.h>
#include <stdlib.h>

enum {
	NOTYPE = 256, EQ, NEQ, AND, OR, REG, HEX, NUM, VAR

	/* TODO: Add more token types */

};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +",	NOTYPE},				// spaces
	{"\\+", '+'},					// plus
        {"-",     '-'},                   // 减号
    	{"\\*",   '*'},                   // 乘号
   	{"\\/",   '/'},                   // 除号
    	{"\\(",   '('},                   // 左括号
    	{"\\)",   ')'},                   // 右括号
	{"==", EQ},						// equal
	{"!=",    NEQ},                   // 不相等
    	{"&&",    AND},                   // 逻辑与
    	{"\\|\\|", OR},                   // 逻辑或
    	{"\\$[a-z0-9]+", REG},            // 寄存器：$t0, $a1 等
    	{"0[xX][0-9a-fA-F]+", HEX},       // 十六进制：0x1000
    	{"[0-9]+", NUM},                  // 十进制：123
    	{"[a-zA-Z_][a-zA-Z0-9_]*", VAR}   // 变量（可能用于未来扩展）
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			Assert(ret == 0, "regex compilation failed: %s\n%s", error_msg, rules[i].regex);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
    int position = 0;
    int i;
    regmatch_t pmatch;
    
    nr_token = 0;

    while(e[position] != '\0') {
        /* Try all rules one by one. */
        for(i = 0; i < NR_REGEX; i ++) {
            if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
                char *substr_start = e + position;
                int substr_len = pmatch.rm_eo;

                Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s", 
                    i, rules[i].regex, position, substr_len, substr_len, substr_start);
                position += substr_len;

                /* 记录 token */
                switch(rules[i].token_type) {
                    case NOTYPE:
                        // 空格，跳过
                        break;
                    case REG:
                    case HEX:
                    case NUM:
                    case VAR:
                        // 复制字符串
                        strncpy(tokens[nr_token].str, substr_start, substr_len);
                        tokens[nr_token].str[substr_len] = '\0';
                        tokens[nr_token].type = rules[i].token_type;
                        nr_token++;
                        break;
                    default:
                        // 运算符：+, -, *, /, (, ), ==, !=, &&, ||
                        tokens[nr_token].type = rules[i].token_type;
                        nr_token++;
                        break;
                }

                break;
            }
        }

        if(i == NR_REGEX) {
            printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
            return false;
        }
    }

    return true; 
}

uint32_t expr(char *e, bool *success) {
    if(!make_token(e)) {
        *success = false;
        return 0;
    }

    /* TODO: Insert codes to evaluate the expression. */
    
    // 临时实现：只处理单个 token 的情况
    if(nr_token == 1) {
        *success = true;
        switch(tokens[0].type) {
            case REG: {
    		char *reg_name = tokens[0].str; // 已经是 $sp
    		for(int i = 0; i < 32; i++) {
        		if(strcmp(reg_name, regfile[i]) == 0) {  // 直接比较 $sp 和 $sp
            		return reg_w(i);
        		}
    		}
   		break;
		}
            case HEX: {
                uint32_t val;
                if(sscanf(tokens[0].str, "%x", &val) == 1) {
                    return val;
                }
                break;
            }
            case NUM: {
                return atoi(tokens[0].str);
            }
            default:
                break;
        }
    }
    
    *success = false;
    printf("Expression too complex or invalid\n");
    return 0;
}
