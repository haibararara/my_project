#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];
extern void record_trace(uint32_t pc, int reg_num, uint32_t value);

/* decode I-type instrucion with unsigned immediate */
static void decode_imm_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_IMM;
	op_src2->imm = instr & IMM_MASK;
	op_src2->val = op_src2->imm;

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = (instr & RT_MASK) >> (IMM_SIZE);
}

/* decode I-type instrucion with signed immediate */
static void decode_imm_type_signed(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_IMM;
	op_src2->imm = instr & IMM_MASK;
	op_src2->val = (int32_t)(op_src2->imm << 16) >> 16; // sign extend 16-bit to 32-bit

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = (instr & RT_MASK) >> (IMM_SIZE);
}

/* decode branch type instrucion */
static void decode_branch_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_REG;
	op_src2->reg = (instr & RT_MASK) >> (IMM_SIZE);
	op_src2->val = reg_w(op_src2->reg);

	op_dest->type = OP_TYPE_IMM;
	op_dest->imm = instr & IMM_MASK;
	op_dest->val = (int32_t)(op_dest->imm << 16) >> 14; // sign extend and multiply by 4
}

/* decode load/store type instrucion */
static void decode_load_store_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_IMM;
	op_src2->imm = instr & IMM_MASK;
	op_src2->val = (int32_t)(op_src2->imm << 16) >> 16; // sign extend 16-bit to 32-bit

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = (instr & RT_MASK) >> (IMM_SIZE);
	op_dest->val = reg_w(op_dest->reg);
}

make_helper(lui) {
    decode_imm_type(instr);
    uint32_t result = (op_src2->val << 16);
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "lui   %s,   0x%04x", REG_NAME(op_dest->reg), op_src2->imm);
}

make_helper(ori) {
    decode_imm_type(instr);
    uint32_t result = op_src1->val | op_src2->val;
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "ori   %s,   %s,   0x%04x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(andi) {
    decode_imm_type(instr);
    uint32_t result = op_src1->val & op_src2->val;
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "andi   %s,   %s,   0x%04x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(addiu) {
    decode_imm_type_signed(instr);
    uint32_t result = op_src1->val + op_src2->val;
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "addiu   %s,   %s,   0x%04x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(beq) {
    decode_branch_type(instr);
    uint32_t current_pc = cpu.pc;
    if (op_src1->val == op_src2->val) {
        cpu.pc = current_pc + op_dest->val;
    }
    sprintf(assembly, "beq   %s,   %s,   0x%08x", 
            REG_NAME(op_src1->reg), 
            REG_NAME(op_src2->reg), 
            current_pc + 4 + op_dest->val);
}

make_helper(bne) {
    decode_branch_type(instr);
    uint32_t current_pc = cpu.pc;
    if (op_src1->val != op_src2->val) {
        cpu.pc = current_pc + op_dest->val;
    }
    sprintf(assembly, "bne   %s,   %s,   0x%08x", 
            REG_NAME(op_src1->reg), 
            REG_NAME(op_src2->reg), 
            current_pc + 4 + op_dest->val);
}

make_helper(blez) {
    op_src1->type = OP_TYPE_REG;
    op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
    op_src1->val = reg_w(op_src1->reg);
    
    op_dest->type = OP_TYPE_IMM;
    op_dest->imm = instr & IMM_MASK;
    op_dest->val = (int32_t)(op_dest->imm << 16) >> 14;

    uint32_t current_pc = cpu.pc;

    if ((int32_t)op_src1->val <= 0) { 
        cpu.pc = current_pc + op_dest->val;
    }
    sprintf(assembly, "blez   %s,   0x%08x", 
            REG_NAME(op_src1->reg), 
            current_pc + 4 + op_dest->val);
}

make_helper(lw) {
    decode_load_store_type(instr);
    uint32_t result = mem_read(op_src1->val + op_src2->val, 4);
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "lw   %s,   %d(%s)", REG_NAME(op_dest->reg), (int32_t)op_src2->imm, REG_NAME(op_src1->reg));
}

make_helper(lb) {
    decode_load_store_type(instr);
    int8_t byte_val = mem_read(op_src1->val + op_src2->val, 1);
    uint32_t result = (int32_t)byte_val; // 符号扩展
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "lb   %s,   %d(%s)", REG_NAME(op_dest->reg), (int32_t)op_src2->imm, REG_NAME(op_src1->reg));
}

make_helper(sw) {

	decode_load_store_type(instr);
	mem_write(op_src1->val + op_src2->val, 4 ,reg_w(op_dest->reg));
	sprintf(assembly, "sw   %s,   %d(%s)", REG_NAME(op_dest->reg), (int32_t)op_src2->imm, REG_NAME(op_src1->reg));
}

make_helper(sb) {

	decode_load_store_type(instr);
	mem_write(op_src1->val + op_src2->val, 1 ,reg_b(op_dest->reg));
	sprintf(assembly, "sb   %s,   %d(%s)", REG_NAME(op_dest->reg), (int32_t)op_src2->imm, REG_NAME(op_src1->reg));
}


