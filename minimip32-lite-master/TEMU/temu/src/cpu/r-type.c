#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];
extern void record_trace(uint32_t pc, int reg_num, uint32_t value);

/* decode R-type instrucion */
static void decode_r_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_REG;
	op_src2->reg = (instr & RT_MASK) >> (RD_SIZE + SHAMT_SIZE + FUNC_SIZE);
	op_src2->val = reg_w(op_src2->reg);

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);
}

/* decode R-type instrucion with shamt */
static void decode_r_type_shift(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RT_MASK) >> (RD_SIZE + SHAMT_SIZE + FUNC_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_IMM;
	op_src2->imm = (instr & SHAMT_MASK) >> (FUNC_SIZE);
	op_src2->val = op_src2->imm;

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);
}

make_helper(and) {
    decode_r_type(instr);
    uint32_t result = (op_src1->val & op_src2->val);
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "and   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

make_helper(or) {
    decode_r_type(instr);
    uint32_t result = (op_src1->val | op_src2->val);
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "or   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

make_helper(xor) {
    decode_r_type(instr);
    uint32_t result = (op_src1->val ^ op_src2->val);
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "xor   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

make_helper(addu) {
    decode_r_type(instr);
    uint32_t result = (op_src1->val + op_src2->val);
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "addu   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

make_helper(sll) {
    decode_r_type_shift(instr);
    uint32_t result = (op_src1->val << op_src2->val);
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "sll   %s,   %s,   %d", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

make_helper(slt) {
    decode_r_type(instr);
    uint32_t result = ((int32_t)op_src1->val < (int32_t)op_src2->val) ? 1 : 0;
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "slt   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

make_helper(srlv) {
    decode_r_type(instr);
    uint32_t result = (op_src1->val >> (op_src2->val & 0x1f));
    reg_w(op_dest->reg) = result;
    
    // Golden Trace记录
    record_trace(pc, op_dest->reg, result);
    
    sprintf(assembly, "srlv   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}
