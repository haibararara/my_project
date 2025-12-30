#include "temu.h"

#define ENTRY_START 0x80000000

char *exec_file;

void init_regex();
void init_wp_pool();
void init_ddr3();

FILE *log_fp = NULL;

static void init_log() {
	log_fp = fopen("log.txt", "w");
	Assert(log_fp, "Can not open 'log.txt'");
}

static void welcome() {
	printf("Welcome to TEMU!\nThe executable is %s.\nFor help, type \"help\"\n",
			exec_file);
}

static FILE *trace_fp = NULL;

void init_trace() {
    trace_fp = fopen("golden_trace.txt", "w");
    if(trace_fp == NULL) {
        printf("Warning: Cannot open golden_trace.txt for writing\n");
    } else {
        fprintf(trace_fp, "PC值    寄存器编号  待写入寄存器的值\n");
    	fflush(trace_fp);
    }
}

void close_trace() {
    if(trace_fp != NULL) {
        fclose(trace_fp);
        trace_fp = NULL;
    }
}

void record_trace(uint32_t pc, int reg_num, uint32_t value) {
    if(trace_fp != NULL) {
        fprintf(trace_fp, "%08x  %02d          %08x\n", pc, reg_num, value);
	fflush(trace_fp);
    }
}

void init_monitor(int argc, char *argv[]) {
	/* Perform some global initialization */

	/* Open the log file. */
	exec_file = argv[1];
	init_log();

	/* Open trace file */
    	init_trace();

	/* Compile the regular expressions. */
	init_regex();

	/* Initialize the watchpoint pool. */
	init_wp_pool();

	/* Display welcome message. */
	welcome();
}

static void load_entry() {
	int ret;

	FILE *fp = fopen("inst.bin", "rb");
	Assert(fp, "Can not open 'inst.bin'");
	fseek(fp, 0, SEEK_END);
	size_t file_size = ftell(fp);
	fseek(fp, 0, SEEK_SET);
	ret = fread((void *)(hw_mem + (ENTRY_START & 0x7FFFFFFF)), file_size, 1, fp);  // load .text segment to memory address 0x1fc00000
	assert(ret == 1);

	fp = fopen("data.bin", "rb");
	Assert(fp, "Can not open 'data.bin'");
	fseek(fp, 0, SEEK_END);
	file_size = ftell(fp);
	fseek(fp, 0, SEEK_SET);
	ret = fread((void *)(hw_mem + ((ENTRY_START + 0x10000) & 0x7FFFFFFF)), file_size, 1, fp);			// load .data segment to memory address 0x00000000

	fclose(fp);
}

void restart() {
	/* Perform some initialization to restart a program */

	/* Read the entry code into memory. */
	load_entry();

	/* Set the initial instruction pointer. */
	cpu.pc = ENTRY_START;

	/* Initialize DRAM. */
	init_ddr3();
}

