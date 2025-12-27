`include "defines.v"

module if_stage (
    input cpu_clk_50M,
    input cpu_rst_n,
    
    output logic [31:0] pc,
    output [31:0] debug_wb_pc  // 供调试使用的PC值，上板测试时务必删除该信号
    );
    
    wire [`INST_ADDR_BUS] pc_next; 
    assign pc_next = pc + 4;

    always @(posedge cpu_clk_50M) begin
        if (~cpu_rst_n)
            pc <= `PC_INIT;
        else begin
            pc <= pc_next;	
        end
    end
    
    assign debug_wb_pc = pc;   // 上板测试时务必删除该语句

endmodule