#include "watchpoint.h"
#include "expr.h"

#include <stdlib.h>
#include <string.h>

#define NR_WP 32

static WP wp_pool[NR_WP];
static WP *head, *free_;

void init_wp_pool() {
	int i;
	for(i = 0; i < NR_WP; i ++) {
		wp_pool[i].NO = i;
		wp_pool[i].next = &wp_pool[i + 1];
	}
	wp_pool[NR_WP - 1].next = NULL;

	head = NULL;
	free_ = wp_pool;
}

/* TODO: Implement the functionality of watchpoint */

WP* new_wp() {
    if(free_ == NULL) {
        printf("No free watchpoint available.\n");
        return NULL;
    }
    
    WP *wp = free_;
    free_ = free_->next;
    
    wp->next = head;
    head = wp;
    
    return wp;
}

/* 将监视点释放回空闲链表 - 移除 static 关键字 */
void free_wp(WP *wp) {
    if(wp == NULL) return;
    
    // 从 head 链表中移除
    if(head == wp) {
        head = wp->next;
    } else {
        WP *prev = head;
        while(prev != NULL && prev->next != wp) {
            prev = prev->next;
        }
        if(prev != NULL) {
            prev->next = wp->next;
        }
    }
    
    // 添加到 free_ 链表
    wp->next = free_;
    free_ = wp;
}

/* 查找指定序号的监视点 - 移除 static 关键字 */
WP* find_wp(int NO) {
    WP *wp = head;
    while(wp != NULL) {
        if(wp->NO == NO) {
            return wp;
        }
        wp = wp->next;
    }
    return NULL;
}

/* 检查所有监视点，返回是否有值变化 */
bool check_wp() {
    bool changed = false;
    WP *wp = head;
    
    while(wp != NULL) {
        bool success;
        uint32_t new_val = expr(wp->expr, &success);
        
        if(success) {
            if(wp->old_value != new_val) {
                printf("Watchpoint %d: %s\n", wp->NO, wp->expr);
                printf("Old value = 0x%08x (%u)\n", wp->old_value, wp->old_value);
                printf("New value = 0x%08x (%u)\n", new_val, new_val);
                wp->old_value = new_val;
                changed = true;
            }
        } else {
            printf("Warning: Cannot evaluate expression '%s' for watchpoint %d\n", 
                   wp->expr, wp->NO);
        }
        
        wp = wp->next;
    }
    
    return changed;
}

/* 打印所有监视点 - 移除 static 关键字 */
void list_wp() {
    if(head == NULL) {
        printf("No watchpoints.\n");
        return;
    }
    
    printf("Num  Expression        Value\n");
    WP *wp = head;
    while(wp != NULL) {
        bool success;
        uint32_t val = expr(wp->expr, &success);
        if(success) {
            printf("%-4d %-16s 0x%08x (%u)\n", 
                   wp->NO, wp->expr, val, val);
        } else {
            printf("%-4d %-16s <error>\n", wp->NO, wp->expr);
        }
        wp = wp->next;
    }
}

