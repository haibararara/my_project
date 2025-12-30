#include <gtk/gtk.h>
#include "temu.h"
#include "reg.h"
#include "memory.h"
#include "monitor/command.h"
#include "monitor/monitor.h"

// 全局GUI组件
static GtkWidget *window;
static GtkWidget *reg_text_view;
static GtkWidget *code_text_view;
static GtkWidget *mem_text_view;
static GtkWidget *console_text_view;
static GtkWidget *console_entry;
static GtkTextBuffer *reg_buffer;
static GtkTextBuffer *code_buffer;
static GtkTextBuffer *mem_buffer;
static GtkTextBuffer *console_buffer;

// 定时器ID，用于定期更新界面
static guint update_timer_id = 0;

// 更新寄存器显示
static void update_registers_display() {
    GtkTextIter start, end;
    
    gtk_text_buffer_get_start_iter(reg_buffer, &start);
    gtk_text_buffer_get_end_iter(reg_buffer, &end);
    gtk_text_buffer_delete(reg_buffer, &start, &end);
    
    // 格式化寄存器信息
    char *reg_text = g_strdup_printf(
        "PC: 0x%08x\n\n"
        "General Purpose Registers:\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n"
        "%-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x  %-6s: 0x%08x\n",
        cpu.pc,
        regfile[0], reg_w(0), regfile[1], reg_w(1), regfile[2], reg_w(2), regfile[3], reg_w(3),
        regfile[4], reg_w(4), regfile[5], reg_w(5), regfile[6], reg_w(6), regfile[7], reg_w(7),
        regfile[8], reg_w(8), regfile[9], reg_w(9), regfile[10], reg_w(10), regfile[11], reg_w(11),
        regfile[12], reg_w(12), regfile[13], reg_w(13), regfile[14], reg_w(14), regfile[15], reg_w(15),
        regfile[16], reg_w(16), regfile[17], reg_w(17), regfile[18], reg_w(18), regfile[19], reg_w(19),
        regfile[20], reg_w(20), regfile[21], reg_w(21), regfile[22], reg_w(22), regfile[23], reg_w(23),
        regfile[24], reg_w(24), regfile[25], reg_w(25), regfile[26], reg_w(26), regfile[27], reg_w(27),
        regfile[28], reg_w(28), regfile[29], reg_w(29), regfile[30], reg_w(30), regfile[31], reg_w(31)
    );
    
    gtk_text_buffer_set_text(reg_buffer, reg_text, -1);
    g_free(reg_text);
}

// 更新代码显示
static void update_code_display() {
    // 显示当前PC附近的代码
    char buffer[256];
    uint32_t pc_start = cpu.pc - 16;
    if(pc_start < 0x80000000) pc_start = 0x80000000;
    
    GtkTextIter start, end;
    gtk_text_buffer_get_start_iter(code_buffer, &start);
    gtk_text_buffer_get_end_iter(code_buffer, &end);
    gtk_text_buffer_delete(code_buffer, &start, &end);
    
    for(int i = 0; i < 10; i++) {
        uint32_t addr = pc_start + i * 4;
        if(addr >= 0x80010000) break; // 超出.text段
        
        uint32_t instr = mem_read(addr, 4);
        // 简单显示，实际应该反汇编
        if(addr == cpu.pc) {
            snprintf(buffer, sizeof(buffer), "> 0x%08x: 0x%08x\n", addr, instr);
        } else {
            snprintf(buffer, sizeof(buffer), "  0x%08x: 0x%08x\n", addr, instr);
        }
        
        gtk_text_buffer_insert_at_cursor(code_buffer, buffer, -1);
    }
}

// 更新内存显示
static void update_memory_display() {
    char buffer[128];
    
    GtkTextIter start, end;
    gtk_text_buffer_get_start_iter(mem_buffer, &start);
    gtk_text_buffer_get_end_iter(mem_buffer, &end);
    gtk_text_buffer_delete(mem_buffer, &start, &end);
    
    // 显示.data段内容
    uint32_t addr = 0x80010000;
    for(int i = 0; i < 16; i++) {
        uint32_t value = mem_read(addr + i*4, 4);
        snprintf(buffer, sizeof(buffer), "0x%08x: 0x%08x\n", addr + i*4, value);
        gtk_text_buffer_insert_at_cursor(mem_buffer, buffer, -1);
    }
}

// 向控制台添加输出
void gui_console_printf(const char *format, ...) {
    va_list args;
    char buffer[1024];
    
    va_start(args, format);
    vsnprintf(buffer, sizeof(buffer), format, args);
    va_end(args);
    
    GtkTextIter end;
    gtk_text_buffer_get_end_iter(console_buffer, &end);
    gtk_text_buffer_insert(console_buffer, &end, buffer, -1);
    
    // 滚动到底部
    GtkWidget *text_view = console_text_view;
    GtkAdjustment *adj = gtk_scrolled_window_get_vadjustment(
        GTK_SCROLLED_WINDOW(gtk_widget_get_parent(text_view)));
    gtk_adjustment_set_value(adj, gtk_adjustment_get_upper(adj) - 
                            gtk_adjustment_get_page_size(adj));
}

// 定时更新界面
static gboolean update_display_callback(gpointer data) {
    update_registers_display();
    update_code_display();
    update_memory_display();
    return TRUE; // 继续定时器
}

// 控制台命令处理
static void console_command_execute() {
    const char *command = gtk_entry_get_text(GTK_ENTRY(console_entry));
    gui_console_printf("(temu) %s\n", command);
    
    // 调用命令处理器
    int result = handle_command(command);
    
    if(result == -1) {
        gtk_main_quit(); // q命令退出
    }
    
    // 更新显示
    update_registers_display();
    update_code_display();
    update_memory_display();
    
    gtk_entry_set_text(GTK_ENTRY(console_entry), "");
}

// 修改工具栏按钮回调
static void on_run_clicked(GtkWidget *widget, gpointer data) {
    gui_console_printf("Running program...\n");
    handle_command("c");
    update_registers_display();
    update_code_display();
    update_memory_display();
}

static void on_step_clicked(GtkWidget *widget, gpointer data) {
    gui_console_printf("Stepping one instruction...\n");
    handle_command("si");
    update_registers_display();
    update_code_display();
    update_memory_display();
}

static void on_stop_clicked(GtkWidget *widget, gpointer data) {
    gui_console_printf("Stop requested.\n");
    // 设置停止状态
    extern int temu_state;
    temu_state = STOP;
}

static void on_reset_clicked(GtkWidget *widget, gpointer data) {
    gui_console_printf("Reset requested (not implemented).\n");
}

// 创建主界面
static void create_main_window() {
    // 创建主窗口
    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), "TEMU Simulator - QtSpim Style");
    gtk_window_set_default_size(GTK_WINDOW(window), 1000, 700);
    g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);
    
    // 创建垂直主容器
    GtkWidget *vbox = gtk_box_new(GTK_ORIENTATION_VERTICAL, 5);
    gtk_container_add(GTK_CONTAINER(window), vbox);
    
    // 1. 菜单栏
    GtkWidget *menu_bar = gtk_menu_bar_new();
    GtkWidget *file_menu = gtk_menu_new();
    GtkWidget *file_item = gtk_menu_item_new_with_label("File");
    GtkWidget *exit_item = gtk_menu_item_new_with_label("Exit");
    
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(file_item), file_menu);
    gtk_menu_shell_append(GTK_MENU_SHELL(file_menu), exit_item);
    gtk_menu_shell_append(GTK_MENU_SHELL(menu_bar), file_item);
    
    g_signal_connect(exit_item, "activate", G_CALLBACK(gtk_main_quit), NULL);
    
    // 2. 工具栏按钮
    GtkWidget *toolbar = gtk_toolbar_new();
    GtkToolItem *run_btn = gtk_tool_button_new(NULL, "Run");
    GtkToolItem *step_btn = gtk_tool_button_new(NULL, "Step");
    GtkToolItem *stop_btn = gtk_tool_button_new(NULL, "Stop");
    GtkToolItem *reset_btn = gtk_tool_button_new(NULL, "Reset");
    
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), run_btn, -1);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), step_btn, -1);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), stop_btn, -1);
    gtk_toolbar_insert(GTK_TOOLBAR(toolbar), reset_btn, -1);
    
    g_signal_connect(run_btn, "clicked", G_CALLBACK(on_run_clicked), NULL);
    g_signal_connect(step_btn, "clicked", G_CALLBACK(on_step_clicked), NULL);
    g_signal_connect(stop_btn, "clicked", G_CALLBACK(on_stop_clicked), NULL);
    g_signal_connect(reset_btn, "clicked", G_CALLBACK(on_reset_clicked), NULL);
    
    // 3. 主内容区域（水平分割）
    GtkWidget *hpaned = gtk_paned_new(GTK_ORIENTATION_HORIZONTAL);
    
    // 左面板（垂直分割：寄存器和代码）
    GtkWidget *left_vpaned = gtk_paned_new(GTK_ORIENTATION_VERTICAL);
    
    // 寄存器面板
    GtkWidget *reg_frame = gtk_frame_new("Registers");
    GtkWidget *reg_scroll = gtk_scrolled_window_new(NULL, NULL);
    reg_text_view = gtk_text_view_new();
    gtk_text_view_set_editable(GTK_TEXT_VIEW(reg_text_view), FALSE);
    gtk_text_view_set_monospace(GTK_TEXT_VIEW(reg_text_view), TRUE);
    reg_buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(reg_text_view));
    gtk_container_add(GTK_CONTAINER(reg_scroll), reg_text_view);
    gtk_container_add(GTK_CONTAINER(reg_frame), reg_scroll);
    
    // 代码面板
    GtkWidget *code_frame = gtk_frame_new("Code");
    GtkWidget *code_scroll = gtk_scrolled_window_new(NULL, NULL);
    code_text_view = gtk_text_view_new();
    gtk_text_view_set_editable(GTK_TEXT_VIEW(code_text_view), FALSE);
    gtk_text_view_set_monospace(GTK_TEXT_VIEW(code_text_view), TRUE);
    code_buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(code_text_view));
    gtk_container_add(GTK_CONTAINER(code_scroll), code_text_view);
    gtk_container_add(GTK_CONTAINER(code_frame), code_scroll);
    
    gtk_paned_add1(GTK_PANED(left_vpaned), reg_frame);
    gtk_paned_add2(GTK_PANED(left_vpaned), code_frame);
    gtk_paned_set_position(GTK_PANED(left_vpaned), 300);
    
    // 右面板（垂直分割：内存和控制台）
    GtkWidget *right_vpaned = gtk_paned_new(GTK_ORIENTATION_VERTICAL);
    
    // 内存面板
    GtkWidget *mem_frame = gtk_frame_new("Memory");
    GtkWidget *mem_scroll = gtk_scrolled_window_new(NULL, NULL);
    mem_text_view = gtk_text_view_new();
    gtk_text_view_set_editable(GTK_TEXT_VIEW(mem_text_view), FALSE);
    gtk_text_view_set_monospace(GTK_TEXT_VIEW(mem_text_view), TRUE);
    mem_buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(mem_text_view));
    gtk_container_add(GTK_CONTAINER(mem_scroll), mem_text_view);
    gtk_container_add(GTK_CONTAINER(mem_frame), mem_scroll);
    
    // 控制台面板
    GtkWidget *console_frame = gtk_frame_new("Console");
    GtkWidget *console_vbox = gtk_box_new(GTK_ORIENTATION_VERTICAL, 5);
    
    GtkWidget *console_scroll = gtk_scrolled_window_new(NULL, NULL);
    console_text_view = gtk_text_view_new();
    gtk_text_view_set_editable(GTK_TEXT_VIEW(console_text_view), FALSE);
    gtk_text_view_set_monospace(GTK_TEXT_VIEW(console_text_view), TRUE);
    console_buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(console_text_view));
    gtk_container_add(GTK_CONTAINER(console_scroll), console_text_view);
    
    // 控制台输入
    GtkWidget *console_input_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 5);
    GtkWidget *prompt_label = gtk_label_new("(temu) ");
    console_entry = gtk_entry_new();
    GtkWidget *exec_button = gtk_button_new_with_label("Execute");
    
    gtk_box_pack_start(GTK_BOX(console_input_box), prompt_label, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(console_input_box), console_entry, TRUE, TRUE, 0);
    gtk_box_pack_start(GTK_BOX(console_input_box), exec_button, FALSE, FALSE, 0);
    
    gtk_box_pack_start(GTK_BOX(console_vbox), console_scroll, TRUE, TRUE, 0);
    gtk_box_pack_start(GTK_BOX(console_vbox), console_input_box, FALSE, FALSE, 0);
    gtk_container_add(GTK_CONTAINER(console_frame), console_vbox);
    
    gtk_paned_add1(GTK_PANED(right_vpaned), mem_frame);
    gtk_paned_add2(GTK_PANED(right_vpaned), console_frame);
    gtk_paned_set_position(GTK_PANED(right_vpaned), 300);
    
    // 设置主分割
    gtk_paned_add1(GTK_PANED(hpaned), left_vpaned);
    gtk_paned_add2(GTK_PANED(hpaned), right_vpaned);
    gtk_paned_set_position(GTK_PANED(hpaned), 500);
    
    // 连接信号
    g_signal_connect(console_entry, "activate", 
                     G_CALLBACK(console_command_execute), NULL);
    g_signal_connect(exec_button, "clicked", 
                     G_CALLBACK(console_command_execute), NULL);
    
    // 组装界面
    gtk_box_pack_start(GTK_BOX(vbox), menu_bar, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(vbox), toolbar, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(vbox), hpaned, TRUE, TRUE, 0);
    
    // 启动定时器，每秒更新4次
    update_timer_id = g_timeout_add(250, update_display_callback, NULL);
}

// 初始化GUI
void init_gui(int *argc, char ***argv) {
    gtk_init(argc, argv);
    create_main_window();
    
    // 初始显示
    update_registers_display();
    update_code_display();
    update_memory_display();
    gui_console_printf("TEMU Simulator started. Type 'help' for commands.\n");
    gui_console_printf("Note: GUI mode currently shows interface only.\n");
    gui_console_printf("Use console mode for full functionality.\n");
    
    gtk_widget_show_all(window);
}

// 运行GUI主循环
void run_gui() {
    gtk_main();
}

// 关闭GUI
void close_gui() {
    if(update_timer_id > 0) {
        g_source_remove(update_timer_id);
        update_timer_id = 0;
    }
}
