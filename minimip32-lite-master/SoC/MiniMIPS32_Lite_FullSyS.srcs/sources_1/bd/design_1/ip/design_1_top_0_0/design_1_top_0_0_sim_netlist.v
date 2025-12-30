// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Dec  7 16:20:15 2025
// Host        : LAPTOP-476JT8H0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/cslab/mips/SoC/MiniMIPS32_Lite_FullSyS.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk,
    locked,
    rxd,
    txd,
    sw_1,
    sw_2,
    led,
    seg_cs,
    seg_data,
    btn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input locked;
  input rxd;
  output txd;
  input [31:0]sw_1;
  input [31:0]sw_2;
  output [31:0]led;
  output [3:0]seg_cs;
  output [7:0]seg_data;
  input [7:0]btn;

  wire \<const1> ;
  wire [7:0]btn;
  wire clk;
  wire [31:0]led;
  wire locked;
  wire rxd;
  wire [3:0]seg_cs;
  wire [6:0]\^seg_data ;
  wire [31:0]sw_1;
  wire [31:0]sw_2;
  wire txd;

  assign seg_data[7] = \<const1> ;
  assign seg_data[6:0] = \^seg_data [6:0];
  VCC VCC
       (.P(\<const1> ));
  design_1_top_0_0_top inst
       (.btn(btn),
        .clk(clk),
        .led(led),
        .locked(locked),
        .rxd(rxd),
        .\scan_sel_reg[0] (seg_cs[0]),
        .\scan_sel_reg[1] (seg_cs[1]),
        .\scan_sel_reg[2] (seg_cs[2]),
        .\scan_sel_reg[3] (seg_cs[3]),
        .seg_data(\^seg_data ),
        .sw_1(sw_1),
        .sw_2(sw_2[19:0]),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "BaudTickGen" *) 
module design_1_top_0_0_BaudTickGen
   (\FSM_onehot_RxD_state_reg[10] ,
    RxD_bit_reg,
    OversamplingTick,
    RxD_bit_reg_0,
    \FSM_onehot_RxD_state_reg[2] ,
    D,
    Q,
    RxD_bit_reg_1,
    E,
    RxD_bit_reg_2,
    RxD_bit_reg_3,
    \FSM_onehot_RxD_state_reg[0] ,
    \FSM_onehot_RxD_state_reg[0]_0 ,
    \FSM_onehot_RxD_state_reg[0]_1 ,
    \FSM_onehot_RxD_state_reg[0]_2 ,
    \FSM_onehot_RxD_state_reg[0]_3 ,
    clk);
  output \FSM_onehot_RxD_state_reg[10] ;
  output RxD_bit_reg;
  output OversamplingTick;
  output [0:0]RxD_bit_reg_0;
  output [0:0]\FSM_onehot_RxD_state_reg[2] ;
  output [1:0]D;
  input [4:0]Q;
  input RxD_bit_reg_1;
  input [0:0]E;
  input RxD_bit_reg_2;
  input RxD_bit_reg_3;
  input \FSM_onehot_RxD_state_reg[0] ;
  input \FSM_onehot_RxD_state_reg[0]_0 ;
  input \FSM_onehot_RxD_state_reg[0]_1 ;
  input \FSM_onehot_RxD_state_reg[0]_2 ;
  input \FSM_onehot_RxD_state_reg[0]_3 ;
  input clk;

  wire [20:0]Acc;
  wire \Acc[12]_i_2_n_0 ;
  wire \Acc[12]_i_3_n_0 ;
  wire \Acc[4]_i_2_n_0 ;
  wire \Acc[4]_i_3_n_0 ;
  wire \Acc[8]_i_2_n_0 ;
  wire \Acc_reg[12]_i_1_n_0 ;
  wire \Acc_reg[12]_i_1_n_1 ;
  wire \Acc_reg[12]_i_1_n_2 ;
  wire \Acc_reg[12]_i_1_n_3 ;
  wire \Acc_reg[16]_i_1_n_0 ;
  wire \Acc_reg[16]_i_1_n_1 ;
  wire \Acc_reg[16]_i_1_n_2 ;
  wire \Acc_reg[16]_i_1_n_3 ;
  wire \Acc_reg[20]_i_1_n_0 ;
  wire \Acc_reg[20]_i_1_n_1 ;
  wire \Acc_reg[20]_i_1_n_2 ;
  wire \Acc_reg[20]_i_1_n_3 ;
  wire \Acc_reg[4]_i_1_n_0 ;
  wire \Acc_reg[4]_i_1_n_1 ;
  wire \Acc_reg[4]_i_1_n_2 ;
  wire \Acc_reg[4]_i_1_n_3 ;
  wire \Acc_reg[8]_i_1_n_0 ;
  wire \Acc_reg[8]_i_1_n_1 ;
  wire \Acc_reg[8]_i_1_n_2 ;
  wire \Acc_reg[8]_i_1_n_3 ;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_RxD_state[10]_i_4_n_0 ;
  wire \FSM_onehot_RxD_state_reg[0] ;
  wire \FSM_onehot_RxD_state_reg[0]_0 ;
  wire \FSM_onehot_RxD_state_reg[0]_1 ;
  wire \FSM_onehot_RxD_state_reg[0]_2 ;
  wire \FSM_onehot_RxD_state_reg[0]_3 ;
  wire \FSM_onehot_RxD_state_reg[10] ;
  wire [0:0]\FSM_onehot_RxD_state_reg[2] ;
  wire OversamplingTick;
  wire [4:0]Q;
  wire RxD_bit_reg;
  wire [0:0]RxD_bit_reg_0;
  wire RxD_bit_reg_1;
  wire RxD_bit_reg_2;
  wire RxD_bit_reg_3;
  wire clk;
  wire [21:0]p_1_in;
  wire [3:1]\NLW_Acc_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Acc_reg[21]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \Acc[0]_i_1 
       (.I0(Acc[0]),
        .O(p_1_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[12]_i_2 
       (.I0(Acc[11]),
        .O(\Acc[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[12]_i_3 
       (.I0(Acc[10]),
        .O(\Acc[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[4]_i_2 
       (.I0(Acc[4]),
        .O(\Acc[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[4]_i_3 
       (.I0(Acc[2]),
        .O(\Acc[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[8]_i_2 
       (.I0(Acc[7]),
        .O(\Acc[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(Acc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(Acc[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(Acc[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(Acc[12]),
        .R(1'b0));
  CARRY4 \Acc_reg[12]_i_1 
       (.CI(\Acc_reg[8]_i_1_n_0 ),
        .CO({\Acc_reg[12]_i_1_n_0 ,\Acc_reg[12]_i_1_n_1 ,\Acc_reg[12]_i_1_n_2 ,\Acc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Acc[11:10],1'b0}),
        .O(p_1_in[12:9]),
        .S({Acc[12],\Acc[12]_i_2_n_0 ,\Acc[12]_i_3_n_0 ,Acc[9]}));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(Acc[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(Acc[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(Acc[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(Acc[16]),
        .R(1'b0));
  CARRY4 \Acc_reg[16]_i_1 
       (.CI(\Acc_reg[12]_i_1_n_0 ),
        .CO({\Acc_reg[16]_i_1_n_0 ,\Acc_reg[16]_i_1_n_1 ,\Acc_reg[16]_i_1_n_2 ,\Acc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(Acc[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(Acc[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(Acc[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(Acc[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(Acc[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(Acc[20]),
        .R(1'b0));
  CARRY4 \Acc_reg[20]_i_1 
       (.CI(\Acc_reg[16]_i_1_n_0 ),
        .CO({\Acc_reg[20]_i_1_n_0 ,\Acc_reg[20]_i_1_n_1 ,\Acc_reg[20]_i_1_n_2 ,\Acc_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(Acc[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(OversamplingTick),
        .R(1'b0));
  CARRY4 \Acc_reg[21]_i_1 
       (.CI(\Acc_reg[20]_i_1_n_0 ),
        .CO({\NLW_Acc_reg[21]_i_1_CO_UNCONNECTED [3:1],p_1_in[21]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Acc_reg[21]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(Acc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(Acc[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(Acc[4]),
        .R(1'b0));
  CARRY4 \Acc_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\Acc_reg[4]_i_1_n_0 ,\Acc_reg[4]_i_1_n_1 ,\Acc_reg[4]_i_1_n_2 ,\Acc_reg[4]_i_1_n_3 }),
        .CYINIT(Acc[0]),
        .DI({Acc[4],1'b0,Acc[2],1'b0}),
        .O(p_1_in[4:1]),
        .S({\Acc[4]_i_2_n_0 ,Acc[3],\Acc[4]_i_3_n_0 ,Acc[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(Acc[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(Acc[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(Acc[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(Acc[8]),
        .R(1'b0));
  CARRY4 \Acc_reg[8]_i_1 
       (.CI(\Acc_reg[4]_i_1_n_0 ),
        .CO({\Acc_reg[8]_i_1_n_0 ,\Acc_reg[8]_i_1_n_1 ,\Acc_reg[8]_i_1_n_2 ,\Acc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Acc[7],1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S({Acc[8],\Acc[8]_i_2_n_0 ,Acc[6:5]}));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(Acc[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFFAAAAAAAA)) 
    \FSM_onehot_RxD_state[0]_i_1 
       (.I0(Q[4]),
        .I1(OversamplingTick),
        .I2(\FSM_onehot_RxD_state_reg[0]_1 ),
        .I3(\FSM_onehot_RxD_state_reg[0]_2 ),
        .I4(\FSM_onehot_RxD_state_reg[0]_3 ),
        .I5(Q[3]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \FSM_onehot_RxD_state[10]_i_1 
       (.I0(RxD_bit_reg_1),
        .I1(Q[0]),
        .I2(\FSM_onehot_RxD_state_reg[0] ),
        .I3(\FSM_onehot_RxD_state_reg[0]_0 ),
        .I4(\FSM_onehot_RxD_state[10]_i_4_n_0 ),
        .O(RxD_bit_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_RxD_state[10]_i_4 
       (.I0(OversamplingTick),
        .I1(\FSM_onehot_RxD_state_reg[0]_1 ),
        .I2(\FSM_onehot_RxD_state_reg[0]_2 ),
        .I3(\FSM_onehot_RxD_state_reg[0]_3 ),
        .O(\FSM_onehot_RxD_state[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_onehot_RxD_state[9]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_RxD_state_reg[0]_3 ),
        .I2(\FSM_onehot_RxD_state_reg[0]_2 ),
        .I3(\FSM_onehot_RxD_state_reg[0]_1 ),
        .I4(OversamplingTick),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hE8AA)) 
    RxD_bit_i_1
       (.I0(RxD_bit_reg_1),
        .I1(RxD_bit_reg_2),
        .I2(RxD_bit_reg_3),
        .I3(OversamplingTick),
        .O(RxD_bit_reg));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \RxD_data[7]_i_1 
       (.I0(\FSM_onehot_RxD_state[10]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_onehot_RxD_state_reg[0] ),
        .O(\FSM_onehot_RxD_state_reg[2] ));
  LUT4 #(
    .INIT(16'h0080)) 
    RxD_data_ready_i_1
       (.I0(\FSM_onehot_RxD_state[10]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(RxD_bit_reg_1),
        .I3(E),
        .O(\FSM_onehot_RxD_state_reg[10] ));
endmodule

(* ORIG_REF_NAME = "BaudTickGen" *) 
module design_1_top_0_0_BaudTickGen__parameterized0
   (E,
    \Acc_reg[21]_0 ,
    D,
    \FSM_onehot_TxD_state_reg[0] ,
    Q,
    \FSM_onehot_TxD_state_reg[0]_0 ,
    \FSM_onehot_TxD_state_reg[0]_1 ,
    ext_uart_start,
    clk);
  output [0:0]E;
  output [0:0]\Acc_reg[21]_0 ;
  output [1:0]D;
  input \FSM_onehot_TxD_state_reg[0] ;
  input [3:0]Q;
  input \FSM_onehot_TxD_state_reg[0]_0 ;
  input \FSM_onehot_TxD_state_reg[0]_1 ;
  input ext_uart_start;
  input clk;

  wire \Acc[0]_i_1_n_0 ;
  wire \Acc[4]_i_2_n_0 ;
  wire \Acc[4]_i_3_n_0 ;
  wire \Acc[8]_i_2_n_0 ;
  wire \Acc[8]_i_3_n_0 ;
  wire [20:0]Acc__0;
  wire \Acc_reg[12]_i_1_n_0 ;
  wire \Acc_reg[12]_i_1_n_1 ;
  wire \Acc_reg[12]_i_1_n_2 ;
  wire \Acc_reg[12]_i_1_n_3 ;
  wire \Acc_reg[12]_i_1_n_4 ;
  wire \Acc_reg[12]_i_1_n_5 ;
  wire \Acc_reg[12]_i_1_n_6 ;
  wire \Acc_reg[12]_i_1_n_7 ;
  wire \Acc_reg[16]_i_1_n_0 ;
  wire \Acc_reg[16]_i_1_n_1 ;
  wire \Acc_reg[16]_i_1_n_2 ;
  wire \Acc_reg[16]_i_1_n_3 ;
  wire \Acc_reg[16]_i_1_n_4 ;
  wire \Acc_reg[16]_i_1_n_5 ;
  wire \Acc_reg[16]_i_1_n_6 ;
  wire \Acc_reg[16]_i_1_n_7 ;
  wire \Acc_reg[20]_i_1_n_0 ;
  wire \Acc_reg[20]_i_1_n_1 ;
  wire \Acc_reg[20]_i_1_n_2 ;
  wire \Acc_reg[20]_i_1_n_3 ;
  wire \Acc_reg[20]_i_1_n_4 ;
  wire \Acc_reg[20]_i_1_n_5 ;
  wire \Acc_reg[20]_i_1_n_6 ;
  wire \Acc_reg[20]_i_1_n_7 ;
  wire [0:0]\Acc_reg[21]_0 ;
  wire \Acc_reg[21]_i_1_n_3 ;
  wire \Acc_reg[4]_i_1_n_0 ;
  wire \Acc_reg[4]_i_1_n_1 ;
  wire \Acc_reg[4]_i_1_n_2 ;
  wire \Acc_reg[4]_i_1_n_3 ;
  wire \Acc_reg[4]_i_1_n_4 ;
  wire \Acc_reg[4]_i_1_n_5 ;
  wire \Acc_reg[4]_i_1_n_6 ;
  wire \Acc_reg[4]_i_1_n_7 ;
  wire \Acc_reg[8]_i_1_n_0 ;
  wire \Acc_reg[8]_i_1_n_1 ;
  wire \Acc_reg[8]_i_1_n_2 ;
  wire \Acc_reg[8]_i_1_n_3 ;
  wire \Acc_reg[8]_i_1_n_4 ;
  wire \Acc_reg[8]_i_1_n_5 ;
  wire \Acc_reg[8]_i_1_n_6 ;
  wire \Acc_reg[8]_i_1_n_7 ;
  wire BitTick;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_TxD_state_reg[0] ;
  wire \FSM_onehot_TxD_state_reg[0]_0 ;
  wire \FSM_onehot_TxD_state_reg[0]_1 ;
  wire [3:0]Q;
  wire clk;
  wire ext_uart_start;
  wire [3:1]\NLW_Acc_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Acc_reg[21]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \Acc[0]_i_1 
       (.I0(Acc__0[0]),
        .O(\Acc[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[4]_i_2 
       (.I0(Acc__0[4]),
        .O(\Acc[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[4]_i_3 
       (.I0(Acc__0[1]),
        .O(\Acc[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[8]_i_2 
       (.I0(Acc__0[8]),
        .O(\Acc[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Acc[8]_i_3 
       (.I0(Acc__0[7]),
        .O(\Acc[8]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Acc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc[0]_i_1_n_0 ),
        .Q(Acc__0[0]),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[12]_i_1_n_6 ),
        .Q(Acc__0[10]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[12]_i_1_n_5 ),
        .Q(Acc__0[11]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[12]_i_1_n_4 ),
        .Q(Acc__0[12]),
        .R(Q[0]));
  CARRY4 \Acc_reg[12]_i_1 
       (.CI(\Acc_reg[8]_i_1_n_0 ),
        .CO({\Acc_reg[12]_i_1_n_0 ,\Acc_reg[12]_i_1_n_1 ,\Acc_reg[12]_i_1_n_2 ,\Acc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Acc_reg[12]_i_1_n_4 ,\Acc_reg[12]_i_1_n_5 ,\Acc_reg[12]_i_1_n_6 ,\Acc_reg[12]_i_1_n_7 }),
        .S(Acc__0[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[16]_i_1_n_7 ),
        .Q(Acc__0[13]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[16]_i_1_n_6 ),
        .Q(Acc__0[14]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[16]_i_1_n_5 ),
        .Q(Acc__0[15]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[16]_i_1_n_4 ),
        .Q(Acc__0[16]),
        .R(Q[0]));
  CARRY4 \Acc_reg[16]_i_1 
       (.CI(\Acc_reg[12]_i_1_n_0 ),
        .CO({\Acc_reg[16]_i_1_n_0 ,\Acc_reg[16]_i_1_n_1 ,\Acc_reg[16]_i_1_n_2 ,\Acc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Acc_reg[16]_i_1_n_4 ,\Acc_reg[16]_i_1_n_5 ,\Acc_reg[16]_i_1_n_6 ,\Acc_reg[16]_i_1_n_7 }),
        .S(Acc__0[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[20]_i_1_n_7 ),
        .Q(Acc__0[17]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[20]_i_1_n_6 ),
        .Q(Acc__0[18]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[20]_i_1_n_5 ),
        .Q(Acc__0[19]),
        .R(Q[0]));
  FDSE #(
    .INIT(1'b0)) 
    \Acc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[4]_i_1_n_7 ),
        .Q(Acc__0[1]),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[20]_i_1_n_4 ),
        .Q(Acc__0[20]),
        .R(Q[0]));
  CARRY4 \Acc_reg[20]_i_1 
       (.CI(\Acc_reg[16]_i_1_n_0 ),
        .CO({\Acc_reg[20]_i_1_n_0 ,\Acc_reg[20]_i_1_n_1 ,\Acc_reg[20]_i_1_n_2 ,\Acc_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Acc_reg[20]_i_1_n_4 ,\Acc_reg[20]_i_1_n_5 ,\Acc_reg[20]_i_1_n_6 ,\Acc_reg[20]_i_1_n_7 }),
        .S(Acc__0[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[21]_i_1_n_3 ),
        .Q(BitTick),
        .R(Q[0]));
  CARRY4 \Acc_reg[21]_i_1 
       (.CI(\Acc_reg[20]_i_1_n_0 ),
        .CO({\NLW_Acc_reg[21]_i_1_CO_UNCONNECTED [3:1],\Acc_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Acc_reg[21]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[4]_i_1_n_6 ),
        .Q(Acc__0[2]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[4]_i_1_n_5 ),
        .Q(Acc__0[3]),
        .R(Q[0]));
  FDSE #(
    .INIT(1'b0)) 
    \Acc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[4]_i_1_n_4 ),
        .Q(Acc__0[4]),
        .S(Q[0]));
  CARRY4 \Acc_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\Acc_reg[4]_i_1_n_0 ,\Acc_reg[4]_i_1_n_1 ,\Acc_reg[4]_i_1_n_2 ,\Acc_reg[4]_i_1_n_3 }),
        .CYINIT(Acc__0[0]),
        .DI({Acc__0[4],1'b0,1'b0,Acc__0[1]}),
        .O({\Acc_reg[4]_i_1_n_4 ,\Acc_reg[4]_i_1_n_5 ,\Acc_reg[4]_i_1_n_6 ,\Acc_reg[4]_i_1_n_7 }),
        .S({\Acc[4]_i_2_n_0 ,Acc__0[3:2],\Acc[4]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[8]_i_1_n_7 ),
        .Q(Acc__0[5]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[8]_i_1_n_6 ),
        .Q(Acc__0[6]),
        .R(Q[0]));
  FDSE #(
    .INIT(1'b0)) 
    \Acc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[8]_i_1_n_5 ),
        .Q(Acc__0[7]),
        .S(Q[0]));
  FDSE #(
    .INIT(1'b0)) 
    \Acc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[8]_i_1_n_4 ),
        .Q(Acc__0[8]),
        .S(Q[0]));
  CARRY4 \Acc_reg[8]_i_1 
       (.CI(\Acc_reg[4]_i_1_n_0 ),
        .CO({\Acc_reg[8]_i_1_n_0 ,\Acc_reg[8]_i_1_n_1 ,\Acc_reg[8]_i_1_n_2 ,\Acc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({Acc__0[8:7],1'b0,1'b0}),
        .O({\Acc_reg[8]_i_1_n_4 ,\Acc_reg[8]_i_1_n_5 ,\Acc_reg[8]_i_1_n_6 ,\Acc_reg[8]_i_1_n_7 }),
        .S({\Acc[8]_i_2_n_0 ,\Acc[8]_i_3_n_0 ,Acc__0[6:5]}));
  FDRE #(
    .INIT(1'b0)) 
    \Acc_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\Acc_reg[12]_i_1_n_7 ),
        .Q(Acc__0[9]),
        .R(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_TxD_state[0]_i_1 
       (.I0(BitTick),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF5F5F5F5F5F5F5D5)) 
    \FSM_onehot_TxD_state[10]_i_1 
       (.I0(\FSM_onehot_TxD_state_reg[0] ),
        .I1(Q[3]),
        .I2(BitTick),
        .I3(\FSM_onehot_TxD_state_reg[0]_0 ),
        .I4(\FSM_onehot_TxD_state_reg[0]_1 ),
        .I5(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_TxD_state[9]_i_1 
       (.I0(Q[2]),
        .I1(BitTick),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \TxD_shift[7]_i_1 
       (.I0(BitTick),
        .I1(\FSM_onehot_TxD_state_reg[0]_1 ),
        .I2(\FSM_onehot_TxD_state_reg[0]_0 ),
        .I3(ext_uart_start),
        .I4(Q[0]),
        .O(\Acc_reg[21]_0 ));
endmodule

(* ORIG_REF_NAME = "MiniMIPS32_Lite_FullSyS" *) 
module design_1_top_0_0_MiniMIPS32_Lite_FullSyS
   (\scan_sel_reg[3] ,
    \scan_sel_reg[2] ,
    \scan_sel_reg[1] ,
    \scan_sel_reg[0] ,
    led,
    seg_data,
    txd,
    clk,
    locked,
    sw_2,
    btn,
    rxd,
    sw_1);
  output \scan_sel_reg[3] ;
  output \scan_sel_reg[2] ;
  output \scan_sel_reg[1] ;
  output \scan_sel_reg[0] ;
  output [31:0]led;
  output [6:0]seg_data;
  output txd;
  input clk;
  input locked;
  input [19:0]sw_2;
  input [7:0]btn;
  input rxd;
  input [31:0]sw_1;

  wire [7:0]RxD_data;
  wire [7:0]btn;
  wire [7:0]btn_ff;
  wire clk;
  wire [6:0]data1;
  wire [6:0]data2;
  wire [6:0]data3;
  wire [6:0]data4;
  wire [6:0]data5;
  wire [6:0]data6;
  wire [6:0]data7;
  wire [6:0]data8;
  wire ext_uart_avai;
  wire \ext_uart_buffer_reg_n_0_[0] ;
  wire \ext_uart_buffer_reg_n_0_[1] ;
  wire \ext_uart_buffer_reg_n_0_[2] ;
  wire \ext_uart_buffer_reg_n_0_[3] ;
  wire ext_uart_ready;
  wire ext_uart_start;
  wire ext_uart_t_n_0;
  wire ext_uart_t_n_1;
  wire [7:0]ext_uart_tx;
  wire [31:0]led;
  wire locked;
  wire [6:0]p_0_out;
  wire rst_n;
  wire rst_n_i_1_n_0;
  wire rxd;
  wire \scan_sel_reg[0] ;
  wire \scan_sel_reg[1] ;
  wire \scan_sel_reg[2] ;
  wire \scan_sel_reg[3] ;
  wire [6:0]seg_data;
  wire [3:0]sel0;
  wire [31:0]sw_1;
  wire \sw_1_ff[31]_i_1_n_0 ;
  wire [19:0]sw_2;
  wire [19:0]sw_2_ff;
  wire txd;

  FDCE \btn_ff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[0]),
        .Q(btn_ff[0]));
  FDCE \btn_ff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[1]),
        .Q(btn_ff[1]));
  FDCE \btn_ff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[2]),
        .Q(btn_ff[2]));
  FDCE \btn_ff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[3]),
        .Q(btn_ff[3]));
  FDCE \btn_ff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[4]),
        .Q(btn_ff[4]));
  FDCE \btn_ff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[5]),
        .Q(btn_ff[5]));
  FDCE \btn_ff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[6]),
        .Q(btn_ff[6]));
  FDCE \btn_ff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(btn[7]),
        .Q(btn_ff[7]));
  FDRE ext_uart_avai_reg
       (.C(clk),
        .CE(1'b1),
        .D(ext_uart_t_n_1),
        .Q(ext_uart_avai),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[0] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[0]),
        .Q(\ext_uart_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[1] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[1]),
        .Q(\ext_uart_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[2] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[2]),
        .Q(\ext_uart_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[3] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[3]),
        .Q(\ext_uart_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[4] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[4]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[5] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[5]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[6] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[6]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \ext_uart_buffer_reg[7] 
       (.C(clk),
        .CE(ext_uart_ready),
        .D(RxD_data[7]),
        .Q(sel0[3]),
        .R(1'b0));
  design_1_top_0_0_async_receiver ext_uart_r
       (.E(ext_uart_ready),
        .Q(RxD_data),
        .clk(clk),
        .rxd(rxd));
  FDRE ext_uart_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(ext_uart_t_n_0),
        .Q(ext_uart_start),
        .R(1'b0));
  design_1_top_0_0_async_transmitter ext_uart_t
       (.E(ext_uart_t_n_0),
        .Q(ext_uart_tx),
        .clk(clk),
        .ext_uart_avai(ext_uart_avai),
        .ext_uart_avai_reg(ext_uart_t_n_1),
        .ext_uart_avai_reg_0(ext_uart_ready),
        .ext_uart_start(ext_uart_start),
        .txd(txd));
  FDRE \ext_uart_tx_reg[0] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(\ext_uart_buffer_reg_n_0_[0] ),
        .Q(ext_uart_tx[0]),
        .R(1'b0));
  FDRE \ext_uart_tx_reg[1] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(\ext_uart_buffer_reg_n_0_[1] ),
        .Q(ext_uart_tx[1]),
        .R(1'b0));
  FDRE \ext_uart_tx_reg[2] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(\ext_uart_buffer_reg_n_0_[2] ),
        .Q(ext_uart_tx[2]),
        .R(1'b0));
  FDRE \ext_uart_tx_reg[3] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(\ext_uart_buffer_reg_n_0_[3] ),
        .Q(ext_uart_tx[3]),
        .R(1'b0));
  FDRE \ext_uart_tx_reg[4] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(sel0[0]),
        .Q(ext_uart_tx[4]),
        .R(1'b0));
  FDRE \ext_uart_tx_reg[5] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(sel0[1]),
        .Q(ext_uart_tx[5]),
        .R(1'b0));
  FDRE \ext_uart_tx_reg[6] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(sel0[2]),
        .Q(ext_uart_tx[6]),
        .R(1'b0));
  FDRE \ext_uart_tx_reg[7] 
       (.C(clk),
        .CE(ext_uart_t_n_0),
        .D(sel0[3]),
        .Q(ext_uart_tx[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rst_n_i_1
       (.I0(locked),
        .O(rst_n_i_1_n_0));
  FDCE rst_n_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_i_1_n_0),
        .D(1'b1),
        .Q(rst_n));
  design_1_top_0_0_x7seg seg_cs_data_gen0
       (.clk(clk),
        .data1(data1),
        .data2(data2),
        .data3(data3),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .data8(data8),
        .p_0_out(p_0_out),
        .\scan_sel_reg[0]_0 (\scan_sel_reg[0] ),
        .\scan_sel_reg[1]_0 (\scan_sel_reg[1] ),
        .\scan_sel_reg[2]_0 (\scan_sel_reg[2] ),
        .\scan_sel_reg[3]_0 (\scan_sel_reg[3] ),
        .seg_data(seg_data));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_1 
       (.I0(btn_ff[7]),
        .I1(btn_ff[6]),
        .I2(btn_ff[4]),
        .I3(btn_ff[5]),
        .O(data8[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_10 
       (.I0(sw_2_ff[19]),
        .I1(sw_2_ff[18]),
        .I2(sw_2_ff[16]),
        .I3(sw_2_ff[17]),
        .O(data6[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_11 
       (.I0(btn_ff[3]),
        .I1(btn_ff[2]),
        .I2(btn_ff[0]),
        .I3(btn_ff[1]),
        .O(data7[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_12 
       (.I0(\ext_uart_buffer_reg_n_0_[3] ),
        .I1(\ext_uart_buffer_reg_n_0_[2] ),
        .I2(\ext_uart_buffer_reg_n_0_[0] ),
        .I3(\ext_uart_buffer_reg_n_0_[1] ),
        .O(p_0_out[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(data1[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_14 
       (.I0(sw_2_ff[3]),
        .I1(sw_2_ff[2]),
        .I2(sw_2_ff[0]),
        .I3(sw_2_ff[1]),
        .O(data2[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_15 
       (.I0(sw_2_ff[7]),
        .I1(sw_2_ff[6]),
        .I2(sw_2_ff[4]),
        .I3(sw_2_ff[5]),
        .O(data3[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_8 
       (.I0(sw_2_ff[11]),
        .I1(sw_2_ff[10]),
        .I2(sw_2_ff[8]),
        .I3(sw_2_ff[9]),
        .O(data4[0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_data[0]_INST_0_i_9 
       (.I0(sw_2_ff[15]),
        .I1(sw_2_ff[14]),
        .I2(sw_2_ff[12]),
        .I3(sw_2_ff[13]),
        .O(data5[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_1 
       (.I0(btn_ff[7]),
        .I1(btn_ff[6]),
        .I2(btn_ff[5]),
        .I3(btn_ff[4]),
        .O(data8[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_10 
       (.I0(sw_2_ff[19]),
        .I1(sw_2_ff[18]),
        .I2(sw_2_ff[17]),
        .I3(sw_2_ff[16]),
        .O(data6[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_11 
       (.I0(btn_ff[3]),
        .I1(btn_ff[2]),
        .I2(btn_ff[1]),
        .I3(btn_ff[0]),
        .O(data7[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_12 
       (.I0(\ext_uart_buffer_reg_n_0_[3] ),
        .I1(\ext_uart_buffer_reg_n_0_[2] ),
        .I2(\ext_uart_buffer_reg_n_0_[1] ),
        .I3(\ext_uart_buffer_reg_n_0_[0] ),
        .O(p_0_out[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(data1[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_14 
       (.I0(sw_2_ff[3]),
        .I1(sw_2_ff[2]),
        .I2(sw_2_ff[1]),
        .I3(sw_2_ff[0]),
        .O(data2[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_15 
       (.I0(sw_2_ff[7]),
        .I1(sw_2_ff[6]),
        .I2(sw_2_ff[5]),
        .I3(sw_2_ff[4]),
        .O(data3[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_8 
       (.I0(sw_2_ff[11]),
        .I1(sw_2_ff[10]),
        .I2(sw_2_ff[9]),
        .I3(sw_2_ff[8]),
        .O(data4[1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_data[1]_INST_0_i_9 
       (.I0(sw_2_ff[15]),
        .I1(sw_2_ff[14]),
        .I2(sw_2_ff[13]),
        .I3(sw_2_ff[12]),
        .O(data5[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_1 
       (.I0(btn_ff[7]),
        .I1(btn_ff[4]),
        .I2(btn_ff[5]),
        .I3(btn_ff[6]),
        .O(data8[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_10 
       (.I0(sw_2_ff[19]),
        .I1(sw_2_ff[16]),
        .I2(sw_2_ff[17]),
        .I3(sw_2_ff[18]),
        .O(data6[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_11 
       (.I0(btn_ff[3]),
        .I1(btn_ff[0]),
        .I2(btn_ff[1]),
        .I3(btn_ff[2]),
        .O(data7[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_12 
       (.I0(\ext_uart_buffer_reg_n_0_[3] ),
        .I1(\ext_uart_buffer_reg_n_0_[0] ),
        .I2(\ext_uart_buffer_reg_n_0_[1] ),
        .I3(\ext_uart_buffer_reg_n_0_[2] ),
        .O(p_0_out[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_13 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(data1[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_14 
       (.I0(sw_2_ff[3]),
        .I1(sw_2_ff[0]),
        .I2(sw_2_ff[1]),
        .I3(sw_2_ff[2]),
        .O(data2[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_15 
       (.I0(sw_2_ff[7]),
        .I1(sw_2_ff[4]),
        .I2(sw_2_ff[5]),
        .I3(sw_2_ff[6]),
        .O(data3[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_8 
       (.I0(sw_2_ff[11]),
        .I1(sw_2_ff[8]),
        .I2(sw_2_ff[9]),
        .I3(sw_2_ff[10]),
        .O(data4[2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_data[2]_INST_0_i_9 
       (.I0(sw_2_ff[15]),
        .I1(sw_2_ff[12]),
        .I2(sw_2_ff[13]),
        .I3(sw_2_ff[14]),
        .O(data5[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_1 
       (.I0(btn_ff[7]),
        .I1(btn_ff[6]),
        .I2(btn_ff[4]),
        .I3(btn_ff[5]),
        .O(data8[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_10 
       (.I0(sw_2_ff[19]),
        .I1(sw_2_ff[18]),
        .I2(sw_2_ff[16]),
        .I3(sw_2_ff[17]),
        .O(data6[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_11 
       (.I0(btn_ff[3]),
        .I1(btn_ff[2]),
        .I2(btn_ff[0]),
        .I3(btn_ff[1]),
        .O(data7[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_12 
       (.I0(\ext_uart_buffer_reg_n_0_[3] ),
        .I1(\ext_uart_buffer_reg_n_0_[2] ),
        .I2(\ext_uart_buffer_reg_n_0_[0] ),
        .I3(\ext_uart_buffer_reg_n_0_[1] ),
        .O(p_0_out[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(data1[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_14 
       (.I0(sw_2_ff[3]),
        .I1(sw_2_ff[2]),
        .I2(sw_2_ff[0]),
        .I3(sw_2_ff[1]),
        .O(data2[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_15 
       (.I0(sw_2_ff[7]),
        .I1(sw_2_ff[6]),
        .I2(sw_2_ff[4]),
        .I3(sw_2_ff[5]),
        .O(data3[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_8 
       (.I0(sw_2_ff[11]),
        .I1(sw_2_ff[10]),
        .I2(sw_2_ff[8]),
        .I3(sw_2_ff[9]),
        .O(data4[3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_data[3]_INST_0_i_9 
       (.I0(sw_2_ff[15]),
        .I1(sw_2_ff[14]),
        .I2(sw_2_ff[12]),
        .I3(sw_2_ff[13]),
        .O(data5[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_1 
       (.I0(btn_ff[7]),
        .I1(btn_ff[5]),
        .I2(btn_ff[6]),
        .I3(btn_ff[4]),
        .O(data8[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_10 
       (.I0(sw_2_ff[19]),
        .I1(sw_2_ff[17]),
        .I2(sw_2_ff[18]),
        .I3(sw_2_ff[16]),
        .O(data6[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_11 
       (.I0(btn_ff[3]),
        .I1(btn_ff[1]),
        .I2(btn_ff[2]),
        .I3(btn_ff[0]),
        .O(data7[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_12 
       (.I0(\ext_uart_buffer_reg_n_0_[3] ),
        .I1(\ext_uart_buffer_reg_n_0_[1] ),
        .I2(\ext_uart_buffer_reg_n_0_[2] ),
        .I3(\ext_uart_buffer_reg_n_0_[0] ),
        .O(p_0_out[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_13 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(data1[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_14 
       (.I0(sw_2_ff[3]),
        .I1(sw_2_ff[1]),
        .I2(sw_2_ff[2]),
        .I3(sw_2_ff[0]),
        .O(data2[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_15 
       (.I0(sw_2_ff[7]),
        .I1(sw_2_ff[5]),
        .I2(sw_2_ff[6]),
        .I3(sw_2_ff[4]),
        .O(data3[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_8 
       (.I0(sw_2_ff[11]),
        .I1(sw_2_ff[9]),
        .I2(sw_2_ff[10]),
        .I3(sw_2_ff[8]),
        .O(data4[4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_data[4]_INST_0_i_9 
       (.I0(sw_2_ff[15]),
        .I1(sw_2_ff[13]),
        .I2(sw_2_ff[14]),
        .I3(sw_2_ff[12]),
        .O(data5[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_1 
       (.I0(btn_ff[7]),
        .I1(btn_ff[6]),
        .I2(btn_ff[4]),
        .I3(btn_ff[5]),
        .O(data8[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_10 
       (.I0(sw_2_ff[19]),
        .I1(sw_2_ff[18]),
        .I2(sw_2_ff[16]),
        .I3(sw_2_ff[17]),
        .O(data6[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_11 
       (.I0(btn_ff[3]),
        .I1(btn_ff[2]),
        .I2(btn_ff[0]),
        .I3(btn_ff[1]),
        .O(data7[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_12 
       (.I0(\ext_uart_buffer_reg_n_0_[3] ),
        .I1(\ext_uart_buffer_reg_n_0_[2] ),
        .I2(\ext_uart_buffer_reg_n_0_[0] ),
        .I3(\ext_uart_buffer_reg_n_0_[1] ),
        .O(p_0_out[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_13 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(data1[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_14 
       (.I0(sw_2_ff[3]),
        .I1(sw_2_ff[2]),
        .I2(sw_2_ff[0]),
        .I3(sw_2_ff[1]),
        .O(data2[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_15 
       (.I0(sw_2_ff[7]),
        .I1(sw_2_ff[6]),
        .I2(sw_2_ff[4]),
        .I3(sw_2_ff[5]),
        .O(data3[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_8 
       (.I0(sw_2_ff[11]),
        .I1(sw_2_ff[10]),
        .I2(sw_2_ff[8]),
        .I3(sw_2_ff[9]),
        .O(data4[5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_data[5]_INST_0_i_9 
       (.I0(sw_2_ff[15]),
        .I1(sw_2_ff[14]),
        .I2(sw_2_ff[12]),
        .I3(sw_2_ff[13]),
        .O(data5[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_1 
       (.I0(btn_ff[7]),
        .I1(btn_ff[4]),
        .I2(btn_ff[6]),
        .I3(btn_ff[5]),
        .O(data8[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_10 
       (.I0(sw_2_ff[19]),
        .I1(sw_2_ff[16]),
        .I2(sw_2_ff[18]),
        .I3(sw_2_ff[17]),
        .O(data6[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_11 
       (.I0(btn_ff[3]),
        .I1(btn_ff[0]),
        .I2(btn_ff[2]),
        .I3(btn_ff[1]),
        .O(data7[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_12 
       (.I0(\ext_uart_buffer_reg_n_0_[3] ),
        .I1(\ext_uart_buffer_reg_n_0_[0] ),
        .I2(\ext_uart_buffer_reg_n_0_[2] ),
        .I3(\ext_uart_buffer_reg_n_0_[1] ),
        .O(p_0_out[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_13 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(data1[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_14 
       (.I0(sw_2_ff[3]),
        .I1(sw_2_ff[0]),
        .I2(sw_2_ff[2]),
        .I3(sw_2_ff[1]),
        .O(data2[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_15 
       (.I0(sw_2_ff[7]),
        .I1(sw_2_ff[4]),
        .I2(sw_2_ff[6]),
        .I3(sw_2_ff[5]),
        .O(data3[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_8 
       (.I0(sw_2_ff[11]),
        .I1(sw_2_ff[8]),
        .I2(sw_2_ff[10]),
        .I3(sw_2_ff[9]),
        .O(data4[6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_data[6]_INST_0_i_9 
       (.I0(sw_2_ff[15]),
        .I1(sw_2_ff[12]),
        .I2(sw_2_ff[14]),
        .I3(sw_2_ff[13]),
        .O(data5[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \sw_1_ff[31]_i_1 
       (.I0(rst_n),
        .O(\sw_1_ff[31]_i_1_n_0 ));
  FDCE \sw_1_ff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[0]),
        .Q(led[0]));
  FDCE \sw_1_ff_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[10]),
        .Q(led[10]));
  FDCE \sw_1_ff_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[11]),
        .Q(led[11]));
  FDCE \sw_1_ff_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[12]),
        .Q(led[12]));
  FDCE \sw_1_ff_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[13]),
        .Q(led[13]));
  FDCE \sw_1_ff_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[14]),
        .Q(led[14]));
  FDCE \sw_1_ff_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[15]),
        .Q(led[15]));
  FDCE \sw_1_ff_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[16]),
        .Q(led[16]));
  FDCE \sw_1_ff_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[17]),
        .Q(led[17]));
  FDCE \sw_1_ff_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[18]),
        .Q(led[18]));
  FDCE \sw_1_ff_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[19]),
        .Q(led[19]));
  FDCE \sw_1_ff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[1]),
        .Q(led[1]));
  FDCE \sw_1_ff_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[20]),
        .Q(led[20]));
  FDCE \sw_1_ff_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[21]),
        .Q(led[21]));
  FDCE \sw_1_ff_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[22]),
        .Q(led[22]));
  FDCE \sw_1_ff_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[23]),
        .Q(led[23]));
  FDCE \sw_1_ff_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[24]),
        .Q(led[24]));
  FDCE \sw_1_ff_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[25]),
        .Q(led[25]));
  FDCE \sw_1_ff_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[26]),
        .Q(led[26]));
  FDCE \sw_1_ff_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[27]),
        .Q(led[27]));
  FDCE \sw_1_ff_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[28]),
        .Q(led[28]));
  FDCE \sw_1_ff_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[29]),
        .Q(led[29]));
  FDCE \sw_1_ff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[2]),
        .Q(led[2]));
  FDCE \sw_1_ff_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[30]),
        .Q(led[30]));
  FDCE \sw_1_ff_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[31]),
        .Q(led[31]));
  FDCE \sw_1_ff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[3]),
        .Q(led[3]));
  FDCE \sw_1_ff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[4]),
        .Q(led[4]));
  FDCE \sw_1_ff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[5]),
        .Q(led[5]));
  FDCE \sw_1_ff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[6]),
        .Q(led[6]));
  FDCE \sw_1_ff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[7]),
        .Q(led[7]));
  FDCE \sw_1_ff_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[8]),
        .Q(led[8]));
  FDCE \sw_1_ff_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_1[9]),
        .Q(led[9]));
  FDCE \sw_2_ff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[0]),
        .Q(sw_2_ff[0]));
  FDCE \sw_2_ff_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[10]),
        .Q(sw_2_ff[10]));
  FDCE \sw_2_ff_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[11]),
        .Q(sw_2_ff[11]));
  FDCE \sw_2_ff_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[12]),
        .Q(sw_2_ff[12]));
  FDCE \sw_2_ff_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[13]),
        .Q(sw_2_ff[13]));
  FDCE \sw_2_ff_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[14]),
        .Q(sw_2_ff[14]));
  FDCE \sw_2_ff_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[15]),
        .Q(sw_2_ff[15]));
  FDCE \sw_2_ff_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[16]),
        .Q(sw_2_ff[16]));
  FDCE \sw_2_ff_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[17]),
        .Q(sw_2_ff[17]));
  FDCE \sw_2_ff_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[18]),
        .Q(sw_2_ff[18]));
  FDCE \sw_2_ff_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[19]),
        .Q(sw_2_ff[19]));
  FDCE \sw_2_ff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[1]),
        .Q(sw_2_ff[1]));
  FDCE \sw_2_ff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[2]),
        .Q(sw_2_ff[2]));
  FDCE \sw_2_ff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[3]),
        .Q(sw_2_ff[3]));
  FDCE \sw_2_ff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[4]),
        .Q(sw_2_ff[4]));
  FDCE \sw_2_ff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[5]),
        .Q(sw_2_ff[5]));
  FDCE \sw_2_ff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[6]),
        .Q(sw_2_ff[6]));
  FDCE \sw_2_ff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[7]),
        .Q(sw_2_ff[7]));
  FDCE \sw_2_ff_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[8]),
        .Q(sw_2_ff[8]));
  FDCE \sw_2_ff_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\sw_1_ff[31]_i_1_n_0 ),
        .D(sw_2[9]),
        .Q(sw_2_ff[9]));
endmodule

(* ORIG_REF_NAME = "async_receiver" *) 
module design_1_top_0_0_async_receiver
   (E,
    Q,
    clk,
    rxd);
  output [0:0]E;
  output [7:0]Q;
  input clk;
  input rxd;

  wire [0:0]E;
  wire \FSM_onehot_RxD_state[10]_i_2_n_0 ;
  wire \FSM_onehot_RxD_state[10]_i_3_n_0 ;
  wire \FSM_onehot_RxD_state_reg_n_0_[10] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[1] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[2] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[3] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[4] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[5] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[6] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[7] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[8] ;
  wire \FSM_onehot_RxD_state_reg_n_0_[9] ;
  wire \Filter_cnt[0]_i_1_n_0 ;
  wire \Filter_cnt[1]_i_1_n_0 ;
  wire \Filter_cnt_reg_n_0_[0] ;
  wire \Filter_cnt_reg_n_0_[1] ;
  wire OversamplingCnt0;
  wire \OversamplingCnt[0]_i_1_n_0 ;
  wire \OversamplingCnt[1]_i_1_n_0 ;
  wire \OversamplingCnt[2]_i_1_n_0 ;
  wire \OversamplingCnt_reg_n_0_[0] ;
  wire \OversamplingCnt_reg_n_0_[1] ;
  wire \OversamplingCnt_reg_n_0_[2] ;
  wire OversamplingTick;
  wire [7:0]Q;
  wire RxD_bit_reg_n_0;
  wire RxD_data0;
  wire \RxD_sync[0]_i_1_n_0 ;
  wire \RxD_sync[1]_i_1_n_0 ;
  wire \RxD_sync_reg_n_0_[0] ;
  wire clk;
  wire p_0_in8_in;
  wire rxd;
  wire tickgen_n_0;
  wire tickgen_n_1;
  wire tickgen_n_3;
  wire tickgen_n_5;
  wire tickgen_n_6;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_RxD_state[10]_i_2 
       (.I0(\FSM_onehot_RxD_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_RxD_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_RxD_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_RxD_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_RxD_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_RxD_state_reg_n_0_[9] ),
        .O(\FSM_onehot_RxD_state[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_RxD_state[10]_i_3 
       (.I0(\FSM_onehot_RxD_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_RxD_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_RxD_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_RxD_state_reg_n_0_[1] ),
        .O(\FSM_onehot_RxD_state[10]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_RxD_state_reg[0] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(tickgen_n_6),
        .Q(OversamplingCnt0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[10] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[10] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[1] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(OversamplingCnt0),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[2] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[3] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[4] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[5] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[6] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[7] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[8] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(\FSM_onehot_RxD_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RxD_state_reg[9] 
       (.C(clk),
        .CE(tickgen_n_3),
        .D(tickgen_n_5),
        .Q(\FSM_onehot_RxD_state_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8FE0)) 
    \Filter_cnt[0]_i_1 
       (.I0(p_0_in8_in),
        .I1(\Filter_cnt_reg_n_0_[1] ),
        .I2(OversamplingTick),
        .I3(\Filter_cnt_reg_n_0_[0] ),
        .O(\Filter_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF8D0)) 
    \Filter_cnt[1]_i_1 
       (.I0(OversamplingTick),
        .I1(\Filter_cnt_reg_n_0_[0] ),
        .I2(\Filter_cnt_reg_n_0_[1] ),
        .I3(p_0_in8_in),
        .O(\Filter_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Filter_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\Filter_cnt[0]_i_1_n_0 ),
        .Q(\Filter_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Filter_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\Filter_cnt[1]_i_1_n_0 ),
        .Q(\Filter_cnt_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1A)) 
    \OversamplingCnt[0]_i_1 
       (.I0(\OversamplingCnt_reg_n_0_[0] ),
        .I1(OversamplingCnt0),
        .I2(OversamplingTick),
        .O(\OversamplingCnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h06AA)) 
    \OversamplingCnt[1]_i_1 
       (.I0(\OversamplingCnt_reg_n_0_[1] ),
        .I1(\OversamplingCnt_reg_n_0_[0] ),
        .I2(OversamplingCnt0),
        .I3(OversamplingTick),
        .O(\OversamplingCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h006AAAAA)) 
    \OversamplingCnt[2]_i_1 
       (.I0(\OversamplingCnt_reg_n_0_[2] ),
        .I1(\OversamplingCnt_reg_n_0_[0] ),
        .I2(\OversamplingCnt_reg_n_0_[1] ),
        .I3(OversamplingCnt0),
        .I4(OversamplingTick),
        .O(\OversamplingCnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OversamplingCnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\OversamplingCnt[0]_i_1_n_0 ),
        .Q(\OversamplingCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OversamplingCnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\OversamplingCnt[1]_i_1_n_0 ),
        .Q(\OversamplingCnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OversamplingCnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\OversamplingCnt[2]_i_1_n_0 ),
        .Q(\OversamplingCnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    RxD_bit_reg
       (.C(clk),
        .CE(1'b1),
        .D(tickgen_n_1),
        .Q(RxD_bit_reg_n_0),
        .R(1'b0));
  FDRE RxD_data_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(tickgen_n_0),
        .Q(E),
        .R(1'b0));
  FDRE \RxD_data_reg[0] 
       (.C(clk),
        .CE(RxD_data0),
        .D(Q[1]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \RxD_data_reg[1] 
       (.C(clk),
        .CE(RxD_data0),
        .D(Q[2]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \RxD_data_reg[2] 
       (.C(clk),
        .CE(RxD_data0),
        .D(Q[3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \RxD_data_reg[3] 
       (.C(clk),
        .CE(RxD_data0),
        .D(Q[4]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \RxD_data_reg[4] 
       (.C(clk),
        .CE(RxD_data0),
        .D(Q[5]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \RxD_data_reg[5] 
       (.C(clk),
        .CE(RxD_data0),
        .D(Q[6]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \RxD_data_reg[6] 
       (.C(clk),
        .CE(RxD_data0),
        .D(Q[7]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \RxD_data_reg[7] 
       (.C(clk),
        .CE(RxD_data0),
        .D(RxD_bit_reg_n_0),
        .Q(Q[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \RxD_sync[0]_i_1 
       (.I0(rxd),
        .I1(OversamplingTick),
        .I2(\RxD_sync_reg_n_0_[0] ),
        .O(\RxD_sync[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RxD_sync[1]_i_1 
       (.I0(\RxD_sync_reg_n_0_[0] ),
        .I1(OversamplingTick),
        .I2(p_0_in8_in),
        .O(\RxD_sync[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \RxD_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\RxD_sync[0]_i_1_n_0 ),
        .Q(\RxD_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \RxD_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\RxD_sync[1]_i_1_n_0 ),
        .Q(p_0_in8_in),
        .R(1'b0));
  design_1_top_0_0_BaudTickGen tickgen
       (.D({tickgen_n_5,tickgen_n_6}),
        .E(E),
        .\FSM_onehot_RxD_state_reg[0] (\FSM_onehot_RxD_state[10]_i_2_n_0 ),
        .\FSM_onehot_RxD_state_reg[0]_0 (\FSM_onehot_RxD_state[10]_i_3_n_0 ),
        .\FSM_onehot_RxD_state_reg[0]_1 (\OversamplingCnt_reg_n_0_[0] ),
        .\FSM_onehot_RxD_state_reg[0]_2 (\OversamplingCnt_reg_n_0_[1] ),
        .\FSM_onehot_RxD_state_reg[0]_3 (\OversamplingCnt_reg_n_0_[2] ),
        .\FSM_onehot_RxD_state_reg[10] (tickgen_n_0),
        .\FSM_onehot_RxD_state_reg[2] (RxD_data0),
        .OversamplingTick(OversamplingTick),
        .Q({\FSM_onehot_RxD_state_reg_n_0_[10] ,\FSM_onehot_RxD_state_reg_n_0_[8] ,\FSM_onehot_RxD_state_reg_n_0_[7] ,\FSM_onehot_RxD_state_reg_n_0_[2] ,OversamplingCnt0}),
        .RxD_bit_reg(tickgen_n_1),
        .RxD_bit_reg_0(tickgen_n_3),
        .RxD_bit_reg_1(RxD_bit_reg_n_0),
        .RxD_bit_reg_2(\Filter_cnt_reg_n_0_[1] ),
        .RxD_bit_reg_3(\Filter_cnt_reg_n_0_[0] ),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "async_transmitter" *) 
module design_1_top_0_0_async_transmitter
   (E,
    ext_uart_avai_reg,
    txd,
    ext_uart_avai,
    ext_uart_avai_reg_0,
    clk,
    ext_uart_start,
    Q);
  output [0:0]E;
  output ext_uart_avai_reg;
  output txd;
  input ext_uart_avai;
  input [0:0]ext_uart_avai_reg_0;
  input clk;
  input ext_uart_start;
  input [7:0]Q;

  wire [0:0]E;
  wire \FSM_onehot_TxD_state[10]_i_2_n_0 ;
  wire \FSM_onehot_TxD_state_reg_n_0_[0] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[10] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[1] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[2] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[3] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[4] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[5] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[6] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[7] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[8] ;
  wire \FSM_onehot_TxD_state_reg_n_0_[9] ;
  wire [7:0]Q;
  wire \TxD_shift[0]_i_1_n_0 ;
  wire \TxD_shift[1]_i_1_n_0 ;
  wire \TxD_shift[2]_i_1_n_0 ;
  wire \TxD_shift[3]_i_1_n_0 ;
  wire \TxD_shift[4]_i_1_n_0 ;
  wire \TxD_shift[5]_i_1_n_0 ;
  wire \TxD_shift[6]_i_1_n_0 ;
  wire \TxD_shift[7]_i_2_n_0 ;
  wire \TxD_shift_reg_n_0_[0] ;
  wire \TxD_shift_reg_n_0_[1] ;
  wire \TxD_shift_reg_n_0_[2] ;
  wire \TxD_shift_reg_n_0_[3] ;
  wire \TxD_shift_reg_n_0_[4] ;
  wire \TxD_shift_reg_n_0_[5] ;
  wire \TxD_shift_reg_n_0_[6] ;
  wire \TxD_shift_reg_n_0_[7] ;
  wire clk;
  wire ext_uart_avai;
  wire ext_uart_avai_reg;
  wire [0:0]ext_uart_avai_reg_0;
  wire ext_uart_start;
  wire tickgen_n_0;
  wire tickgen_n_1;
  wire tickgen_n_2;
  wire tickgen_n_3;
  wire txd;
  wire txd_INST_0_i_1_n_0;
  wire txd_INST_0_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_TxD_state[10]_i_2 
       (.I0(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I1(ext_uart_start),
        .O(\FSM_onehot_TxD_state[10]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_TxD_state_reg[0] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(tickgen_n_3),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[10] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[10] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[1] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[2] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[3] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[4] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[5] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[6] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[7] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[8] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(\FSM_onehot_TxD_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_TxD_state_reg[9] 
       (.C(clk),
        .CE(tickgen_n_0),
        .D(tickgen_n_2),
        .Q(\FSM_onehot_TxD_state_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \TxD_shift[0]_i_1 
       (.I0(\TxD_shift_reg_n_0_[1] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_start),
        .I3(Q[0]),
        .O(\TxD_shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \TxD_shift[1]_i_1 
       (.I0(\TxD_shift_reg_n_0_[2] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_start),
        .I3(Q[1]),
        .O(\TxD_shift[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \TxD_shift[2]_i_1 
       (.I0(\TxD_shift_reg_n_0_[3] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_start),
        .I3(Q[2]),
        .O(\TxD_shift[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \TxD_shift[3]_i_1 
       (.I0(\TxD_shift_reg_n_0_[4] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_start),
        .I3(Q[3]),
        .O(\TxD_shift[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \TxD_shift[4]_i_1 
       (.I0(\TxD_shift_reg_n_0_[5] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_start),
        .I3(Q[4]),
        .O(\TxD_shift[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \TxD_shift[5]_i_1 
       (.I0(\TxD_shift_reg_n_0_[6] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_start),
        .I3(Q[5]),
        .O(\TxD_shift[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \TxD_shift[6]_i_1 
       (.I0(\TxD_shift_reg_n_0_[7] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_start),
        .I3(Q[6]),
        .O(\TxD_shift[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \TxD_shift[7]_i_2 
       (.I0(Q[7]),
        .I1(ext_uart_start),
        .I2(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .O(\TxD_shift[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[0] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[0]_i_1_n_0 ),
        .Q(\TxD_shift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[1] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[1]_i_1_n_0 ),
        .Q(\TxD_shift_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[2] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[2]_i_1_n_0 ),
        .Q(\TxD_shift_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[3] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[3]_i_1_n_0 ),
        .Q(\TxD_shift_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[4] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[4]_i_1_n_0 ),
        .Q(\TxD_shift_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[5] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[5]_i_1_n_0 ),
        .Q(\TxD_shift_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[6] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[6]_i_1_n_0 ),
        .Q(\TxD_shift_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TxD_shift_reg[7] 
       (.C(clk),
        .CE(tickgen_n_1),
        .D(\TxD_shift[7]_i_2_n_0 ),
        .Q(\TxD_shift_reg_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF2)) 
    ext_uart_avai_i_1
       (.I0(ext_uart_avai),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I2(ext_uart_avai_reg_0),
        .O(ext_uart_avai_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ext_uart_tx[7]_i_1 
       (.I0(\FSM_onehot_TxD_state_reg_n_0_[0] ),
        .I1(ext_uart_avai),
        .O(E));
  design_1_top_0_0_BaudTickGen__parameterized0 tickgen
       (.\Acc_reg[21]_0 (tickgen_n_1),
        .D({tickgen_n_2,tickgen_n_3}),
        .E(tickgen_n_0),
        .\FSM_onehot_TxD_state_reg[0] (\FSM_onehot_TxD_state[10]_i_2_n_0 ),
        .\FSM_onehot_TxD_state_reg[0]_0 (txd_INST_0_i_2_n_0),
        .\FSM_onehot_TxD_state_reg[0]_1 (txd_INST_0_i_1_n_0),
        .Q({\FSM_onehot_TxD_state_reg_n_0_[10] ,\FSM_onehot_TxD_state_reg_n_0_[8] ,\FSM_onehot_TxD_state_reg_n_0_[1] ,\FSM_onehot_TxD_state_reg_n_0_[0] }),
        .clk(clk),
        .ext_uart_start(ext_uart_start));
  LUT4 #(
    .INIT(16'hAAA3)) 
    txd_INST_0
       (.I0(\TxD_shift_reg_n_0_[0] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[1] ),
        .I2(txd_INST_0_i_1_n_0),
        .I3(txd_INST_0_i_2_n_0),
        .O(txd));
  LUT4 #(
    .INIT(16'hFFFE)) 
    txd_INST_0_i_1
       (.I0(\FSM_onehot_TxD_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_TxD_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_TxD_state_reg_n_0_[4] ),
        .O(txd_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    txd_INST_0_i_2
       (.I0(\FSM_onehot_TxD_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_TxD_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_TxD_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_TxD_state_reg_n_0_[8] ),
        .O(txd_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (\scan_sel_reg[3] ,
    \scan_sel_reg[2] ,
    \scan_sel_reg[1] ,
    \scan_sel_reg[0] ,
    led,
    seg_data,
    txd,
    clk,
    locked,
    sw_2,
    btn,
    rxd,
    sw_1);
  output \scan_sel_reg[3] ;
  output \scan_sel_reg[2] ;
  output \scan_sel_reg[1] ;
  output \scan_sel_reg[0] ;
  output [31:0]led;
  output [6:0]seg_data;
  output txd;
  input clk;
  input locked;
  input [19:0]sw_2;
  input [7:0]btn;
  input rxd;
  input [31:0]sw_1;

  wire [7:0]btn;
  wire clk;
  wire [31:0]led;
  wire locked;
  wire rxd;
  wire \scan_sel_reg[0] ;
  wire \scan_sel_reg[1] ;
  wire \scan_sel_reg[2] ;
  wire \scan_sel_reg[3] ;
  wire [6:0]seg_data;
  wire [31:0]sw_1;
  wire [19:0]sw_2;
  wire txd;

  design_1_top_0_0_MiniMIPS32_Lite_FullSyS MiniMIPS32_Lite_FullSyS0
       (.btn(btn),
        .clk(clk),
        .led(led),
        .locked(locked),
        .rxd(rxd),
        .\scan_sel_reg[0] (\scan_sel_reg[0] ),
        .\scan_sel_reg[1] (\scan_sel_reg[1] ),
        .\scan_sel_reg[2] (\scan_sel_reg[2] ),
        .\scan_sel_reg[3] (\scan_sel_reg[3] ),
        .seg_data(seg_data),
        .sw_1(sw_1),
        .sw_2(sw_2),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "x7seg" *) 
module design_1_top_0_0_x7seg
   (\scan_sel_reg[3]_0 ,
    \scan_sel_reg[2]_0 ,
    \scan_sel_reg[0]_0 ,
    \scan_sel_reg[1]_0 ,
    seg_data,
    data8,
    p_0_out,
    data1,
    data2,
    data3,
    data4,
    data5,
    data6,
    data7,
    clk);
  output \scan_sel_reg[3]_0 ;
  output \scan_sel_reg[2]_0 ;
  output \scan_sel_reg[0]_0 ;
  output \scan_sel_reg[1]_0 ;
  output [6:0]seg_data;
  input [6:0]data8;
  input [6:0]p_0_out;
  input [6:0]data1;
  input [6:0]data2;
  input [6:0]data3;
  input [6:0]data4;
  input [6:0]data5;
  input [6:0]data6;
  input [6:0]data7;
  input clk;

  wire clear;
  wire clk;
  wire [6:0]data1;
  wire [6:0]data2;
  wire [6:0]data3;
  wire [6:0]data4;
  wire [6:0]data5;
  wire [6:0]data6;
  wire [6:0]data7;
  wire [6:0]data8;
  wire [6:0]p_0_out;
  wire \scan_cnt[0]_i_2_n_0 ;
  wire [16:0]scan_cnt_reg;
  wire \scan_cnt_reg[0]_i_1_n_0 ;
  wire \scan_cnt_reg[0]_i_1_n_1 ;
  wire \scan_cnt_reg[0]_i_1_n_2 ;
  wire \scan_cnt_reg[0]_i_1_n_3 ;
  wire \scan_cnt_reg[0]_i_1_n_4 ;
  wire \scan_cnt_reg[0]_i_1_n_5 ;
  wire \scan_cnt_reg[0]_i_1_n_6 ;
  wire \scan_cnt_reg[0]_i_1_n_7 ;
  wire \scan_cnt_reg[12]_i_1_n_0 ;
  wire \scan_cnt_reg[12]_i_1_n_1 ;
  wire \scan_cnt_reg[12]_i_1_n_2 ;
  wire \scan_cnt_reg[12]_i_1_n_3 ;
  wire \scan_cnt_reg[12]_i_1_n_4 ;
  wire \scan_cnt_reg[12]_i_1_n_5 ;
  wire \scan_cnt_reg[12]_i_1_n_6 ;
  wire \scan_cnt_reg[12]_i_1_n_7 ;
  wire \scan_cnt_reg[16]_i_1_n_7 ;
  wire \scan_cnt_reg[4]_i_1_n_0 ;
  wire \scan_cnt_reg[4]_i_1_n_1 ;
  wire \scan_cnt_reg[4]_i_1_n_2 ;
  wire \scan_cnt_reg[4]_i_1_n_3 ;
  wire \scan_cnt_reg[4]_i_1_n_4 ;
  wire \scan_cnt_reg[4]_i_1_n_5 ;
  wire \scan_cnt_reg[4]_i_1_n_6 ;
  wire \scan_cnt_reg[4]_i_1_n_7 ;
  wire \scan_cnt_reg[8]_i_1_n_0 ;
  wire \scan_cnt_reg[8]_i_1_n_1 ;
  wire \scan_cnt_reg[8]_i_1_n_2 ;
  wire \scan_cnt_reg[8]_i_1_n_3 ;
  wire \scan_cnt_reg[8]_i_1_n_4 ;
  wire \scan_cnt_reg[8]_i_1_n_5 ;
  wire \scan_cnt_reg[8]_i_1_n_6 ;
  wire \scan_cnt_reg[8]_i_1_n_7 ;
  wire \scan_sel[0]_i_1_n_0 ;
  wire \scan_sel[1]_i_1_n_0 ;
  wire \scan_sel[2]_i_1_n_0 ;
  wire \scan_sel[3]_i_1_n_0 ;
  wire \scan_sel[3]_i_3_n_0 ;
  wire \scan_sel[3]_i_4_n_0 ;
  wire \scan_sel[3]_i_5_n_0 ;
  wire \scan_sel[3]_i_6_n_0 ;
  wire \scan_sel[3]_i_7_n_0 ;
  wire \scan_sel_reg[0]_0 ;
  wire \scan_sel_reg[1]_0 ;
  wire \scan_sel_reg[2]_0 ;
  wire \scan_sel_reg[3]_0 ;
  wire [6:0]seg_data;
  wire \seg_data[0]_INST_0_i_2_n_0 ;
  wire \seg_data[0]_INST_0_i_3_n_0 ;
  wire \seg_data[0]_INST_0_i_4_n_0 ;
  wire \seg_data[0]_INST_0_i_5_n_0 ;
  wire \seg_data[0]_INST_0_i_6_n_0 ;
  wire \seg_data[0]_INST_0_i_7_n_0 ;
  wire \seg_data[1]_INST_0_i_2_n_0 ;
  wire \seg_data[1]_INST_0_i_3_n_0 ;
  wire \seg_data[1]_INST_0_i_4_n_0 ;
  wire \seg_data[1]_INST_0_i_5_n_0 ;
  wire \seg_data[1]_INST_0_i_6_n_0 ;
  wire \seg_data[1]_INST_0_i_7_n_0 ;
  wire \seg_data[2]_INST_0_i_2_n_0 ;
  wire \seg_data[2]_INST_0_i_3_n_0 ;
  wire \seg_data[2]_INST_0_i_4_n_0 ;
  wire \seg_data[2]_INST_0_i_5_n_0 ;
  wire \seg_data[2]_INST_0_i_6_n_0 ;
  wire \seg_data[2]_INST_0_i_7_n_0 ;
  wire \seg_data[3]_INST_0_i_2_n_0 ;
  wire \seg_data[3]_INST_0_i_3_n_0 ;
  wire \seg_data[3]_INST_0_i_4_n_0 ;
  wire \seg_data[3]_INST_0_i_5_n_0 ;
  wire \seg_data[3]_INST_0_i_6_n_0 ;
  wire \seg_data[3]_INST_0_i_7_n_0 ;
  wire \seg_data[4]_INST_0_i_2_n_0 ;
  wire \seg_data[4]_INST_0_i_3_n_0 ;
  wire \seg_data[4]_INST_0_i_4_n_0 ;
  wire \seg_data[4]_INST_0_i_5_n_0 ;
  wire \seg_data[4]_INST_0_i_6_n_0 ;
  wire \seg_data[4]_INST_0_i_7_n_0 ;
  wire \seg_data[5]_INST_0_i_2_n_0 ;
  wire \seg_data[5]_INST_0_i_3_n_0 ;
  wire \seg_data[5]_INST_0_i_4_n_0 ;
  wire \seg_data[5]_INST_0_i_5_n_0 ;
  wire \seg_data[5]_INST_0_i_6_n_0 ;
  wire \seg_data[5]_INST_0_i_7_n_0 ;
  wire \seg_data[6]_INST_0_i_2_n_0 ;
  wire \seg_data[6]_INST_0_i_3_n_0 ;
  wire \seg_data[6]_INST_0_i_4_n_0 ;
  wire \seg_data[6]_INST_0_i_5_n_0 ;
  wire \seg_data[6]_INST_0_i_6_n_0 ;
  wire \seg_data[6]_INST_0_i_7_n_0 ;
  wire [3:0]\NLW_scan_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_scan_cnt_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \scan_cnt[0]_i_2 
       (.I0(scan_cnt_reg[0]),
        .O(\scan_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[0]_i_1_n_7 ),
        .Q(scan_cnt_reg[0]),
        .R(clear));
  CARRY4 \scan_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\scan_cnt_reg[0]_i_1_n_0 ,\scan_cnt_reg[0]_i_1_n_1 ,\scan_cnt_reg[0]_i_1_n_2 ,\scan_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\scan_cnt_reg[0]_i_1_n_4 ,\scan_cnt_reg[0]_i_1_n_5 ,\scan_cnt_reg[0]_i_1_n_6 ,\scan_cnt_reg[0]_i_1_n_7 }),
        .S({scan_cnt_reg[3:1],\scan_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[8]_i_1_n_5 ),
        .Q(scan_cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[8]_i_1_n_4 ),
        .Q(scan_cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[12]_i_1_n_7 ),
        .Q(scan_cnt_reg[12]),
        .R(clear));
  CARRY4 \scan_cnt_reg[12]_i_1 
       (.CI(\scan_cnt_reg[8]_i_1_n_0 ),
        .CO({\scan_cnt_reg[12]_i_1_n_0 ,\scan_cnt_reg[12]_i_1_n_1 ,\scan_cnt_reg[12]_i_1_n_2 ,\scan_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scan_cnt_reg[12]_i_1_n_4 ,\scan_cnt_reg[12]_i_1_n_5 ,\scan_cnt_reg[12]_i_1_n_6 ,\scan_cnt_reg[12]_i_1_n_7 }),
        .S(scan_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[12]_i_1_n_6 ),
        .Q(scan_cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[12]_i_1_n_5 ),
        .Q(scan_cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[12]_i_1_n_4 ),
        .Q(scan_cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[16]_i_1_n_7 ),
        .Q(scan_cnt_reg[16]),
        .R(clear));
  CARRY4 \scan_cnt_reg[16]_i_1 
       (.CI(\scan_cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_scan_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_scan_cnt_reg[16]_i_1_O_UNCONNECTED [3:1],\scan_cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,scan_cnt_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[0]_i_1_n_6 ),
        .Q(scan_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[0]_i_1_n_5 ),
        .Q(scan_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[0]_i_1_n_4 ),
        .Q(scan_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[4]_i_1_n_7 ),
        .Q(scan_cnt_reg[4]),
        .R(clear));
  CARRY4 \scan_cnt_reg[4]_i_1 
       (.CI(\scan_cnt_reg[0]_i_1_n_0 ),
        .CO({\scan_cnt_reg[4]_i_1_n_0 ,\scan_cnt_reg[4]_i_1_n_1 ,\scan_cnt_reg[4]_i_1_n_2 ,\scan_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scan_cnt_reg[4]_i_1_n_4 ,\scan_cnt_reg[4]_i_1_n_5 ,\scan_cnt_reg[4]_i_1_n_6 ,\scan_cnt_reg[4]_i_1_n_7 }),
        .S(scan_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[4]_i_1_n_6 ),
        .Q(scan_cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[4]_i_1_n_5 ),
        .Q(scan_cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[4]_i_1_n_4 ),
        .Q(scan_cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[8]_i_1_n_7 ),
        .Q(scan_cnt_reg[8]),
        .R(clear));
  CARRY4 \scan_cnt_reg[8]_i_1 
       (.CI(\scan_cnt_reg[4]_i_1_n_0 ),
        .CO({\scan_cnt_reg[8]_i_1_n_0 ,\scan_cnt_reg[8]_i_1_n_1 ,\scan_cnt_reg[8]_i_1_n_2 ,\scan_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scan_cnt_reg[8]_i_1_n_4 ,\scan_cnt_reg[8]_i_1_n_5 ,\scan_cnt_reg[8]_i_1_n_6 ,\scan_cnt_reg[8]_i_1_n_7 }),
        .S(scan_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\scan_cnt_reg[8]_i_1_n_6 ),
        .Q(scan_cnt_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \scan_sel[0]_i_1 
       (.I0(\scan_sel_reg[0]_0 ),
        .O(\scan_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scan_sel[1]_i_1 
       (.I0(\scan_sel_reg[0]_0 ),
        .I1(\scan_sel_reg[1]_0 ),
        .O(\scan_sel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \scan_sel[2]_i_1 
       (.I0(\scan_sel_reg[0]_0 ),
        .I1(\scan_sel_reg[1]_0 ),
        .I2(\scan_sel_reg[2]_0 ),
        .O(\scan_sel[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \scan_sel[3]_i_1 
       (.I0(\scan_sel[3]_i_4_n_0 ),
        .I1(\scan_sel[3]_i_5_n_0 ),
        .I2(\scan_sel[3]_i_6_n_0 ),
        .I3(\scan_sel[3]_i_7_n_0 ),
        .O(\scan_sel[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \scan_sel[3]_i_2 
       (.I0(\scan_sel[3]_i_6_n_0 ),
        .I1(\scan_sel[3]_i_5_n_0 ),
        .I2(\scan_sel[3]_i_4_n_0 ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \scan_sel[3]_i_3 
       (.I0(\scan_sel_reg[1]_0 ),
        .I1(\scan_sel_reg[0]_0 ),
        .I2(\scan_sel_reg[2]_0 ),
        .I3(\scan_sel_reg[3]_0 ),
        .O(\scan_sel[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \scan_sel[3]_i_4 
       (.I0(scan_cnt_reg[14]),
        .I1(scan_cnt_reg[13]),
        .I2(scan_cnt_reg[11]),
        .I3(scan_cnt_reg[12]),
        .I4(scan_cnt_reg[16]),
        .I5(scan_cnt_reg[15]),
        .O(\scan_sel[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \scan_sel[3]_i_5 
       (.I0(scan_cnt_reg[0]),
        .I1(scan_cnt_reg[1]),
        .I2(scan_cnt_reg[2]),
        .I3(scan_cnt_reg[4]),
        .I4(scan_cnt_reg[3]),
        .O(\scan_sel[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \scan_sel[3]_i_6 
       (.I0(scan_cnt_reg[8]),
        .I1(scan_cnt_reg[7]),
        .I2(scan_cnt_reg[6]),
        .I3(scan_cnt_reg[5]),
        .I4(scan_cnt_reg[10]),
        .I5(scan_cnt_reg[9]),
        .O(\scan_sel[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \scan_sel[3]_i_7 
       (.I0(\scan_sel_reg[3]_0 ),
        .I1(\scan_sel_reg[2]_0 ),
        .I2(\scan_sel_reg[0]_0 ),
        .I3(\scan_sel_reg[1]_0 ),
        .O(\scan_sel[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_sel_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(\scan_sel[0]_i_1_n_0 ),
        .Q(\scan_sel_reg[0]_0 ),
        .R(\scan_sel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_sel_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(\scan_sel[1]_i_1_n_0 ),
        .Q(\scan_sel_reg[1]_0 ),
        .R(\scan_sel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_sel_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(\scan_sel[2]_i_1_n_0 ),
        .Q(\scan_sel_reg[2]_0 ),
        .R(\scan_sel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_sel_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(\scan_sel[3]_i_3_n_0 ),
        .Q(\scan_sel_reg[3]_0 ),
        .R(\scan_sel[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[0]_INST_0 
       (.I0(data8[0]),
        .I1(\scan_sel_reg[3]_0 ),
        .I2(\seg_data[0]_INST_0_i_2_n_0 ),
        .I3(\scan_sel_reg[2]_0 ),
        .I4(\seg_data[0]_INST_0_i_3_n_0 ),
        .O(seg_data[0]));
  MUXF8 \seg_data[0]_INST_0_i_2 
       (.I0(\seg_data[0]_INST_0_i_4_n_0 ),
        .I1(\seg_data[0]_INST_0_i_5_n_0 ),
        .O(\seg_data[0]_INST_0_i_2_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF8 \seg_data[0]_INST_0_i_3 
       (.I0(\seg_data[0]_INST_0_i_6_n_0 ),
        .I1(\seg_data[0]_INST_0_i_7_n_0 ),
        .O(\seg_data[0]_INST_0_i_3_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF7 \seg_data[0]_INST_0_i_4 
       (.I0(data4[0]),
        .I1(data5[0]),
        .O(\seg_data[0]_INST_0_i_4_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[0]_INST_0_i_5 
       (.I0(data6[0]),
        .I1(data7[0]),
        .O(\seg_data[0]_INST_0_i_5_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[0]_INST_0_i_6 
       (.I0(p_0_out[0]),
        .I1(data1[0]),
        .O(\seg_data[0]_INST_0_i_6_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[0]_INST_0_i_7 
       (.I0(data2[0]),
        .I1(data3[0]),
        .O(\seg_data[0]_INST_0_i_7_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[1]_INST_0 
       (.I0(data8[1]),
        .I1(\scan_sel_reg[3]_0 ),
        .I2(\seg_data[1]_INST_0_i_2_n_0 ),
        .I3(\scan_sel_reg[2]_0 ),
        .I4(\seg_data[1]_INST_0_i_3_n_0 ),
        .O(seg_data[1]));
  MUXF8 \seg_data[1]_INST_0_i_2 
       (.I0(\seg_data[1]_INST_0_i_4_n_0 ),
        .I1(\seg_data[1]_INST_0_i_5_n_0 ),
        .O(\seg_data[1]_INST_0_i_2_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF8 \seg_data[1]_INST_0_i_3 
       (.I0(\seg_data[1]_INST_0_i_6_n_0 ),
        .I1(\seg_data[1]_INST_0_i_7_n_0 ),
        .O(\seg_data[1]_INST_0_i_3_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF7 \seg_data[1]_INST_0_i_4 
       (.I0(data4[1]),
        .I1(data5[1]),
        .O(\seg_data[1]_INST_0_i_4_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[1]_INST_0_i_5 
       (.I0(data6[1]),
        .I1(data7[1]),
        .O(\seg_data[1]_INST_0_i_5_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[1]_INST_0_i_6 
       (.I0(p_0_out[1]),
        .I1(data1[1]),
        .O(\seg_data[1]_INST_0_i_6_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[1]_INST_0_i_7 
       (.I0(data2[1]),
        .I1(data3[1]),
        .O(\seg_data[1]_INST_0_i_7_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[2]_INST_0 
       (.I0(data8[2]),
        .I1(\scan_sel_reg[3]_0 ),
        .I2(\seg_data[2]_INST_0_i_2_n_0 ),
        .I3(\scan_sel_reg[2]_0 ),
        .I4(\seg_data[2]_INST_0_i_3_n_0 ),
        .O(seg_data[2]));
  MUXF8 \seg_data[2]_INST_0_i_2 
       (.I0(\seg_data[2]_INST_0_i_4_n_0 ),
        .I1(\seg_data[2]_INST_0_i_5_n_0 ),
        .O(\seg_data[2]_INST_0_i_2_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF8 \seg_data[2]_INST_0_i_3 
       (.I0(\seg_data[2]_INST_0_i_6_n_0 ),
        .I1(\seg_data[2]_INST_0_i_7_n_0 ),
        .O(\seg_data[2]_INST_0_i_3_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF7 \seg_data[2]_INST_0_i_4 
       (.I0(data4[2]),
        .I1(data5[2]),
        .O(\seg_data[2]_INST_0_i_4_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[2]_INST_0_i_5 
       (.I0(data6[2]),
        .I1(data7[2]),
        .O(\seg_data[2]_INST_0_i_5_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[2]_INST_0_i_6 
       (.I0(p_0_out[2]),
        .I1(data1[2]),
        .O(\seg_data[2]_INST_0_i_6_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[2]_INST_0_i_7 
       (.I0(data2[2]),
        .I1(data3[2]),
        .O(\seg_data[2]_INST_0_i_7_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[3]_INST_0 
       (.I0(data8[3]),
        .I1(\scan_sel_reg[3]_0 ),
        .I2(\seg_data[3]_INST_0_i_2_n_0 ),
        .I3(\scan_sel_reg[2]_0 ),
        .I4(\seg_data[3]_INST_0_i_3_n_0 ),
        .O(seg_data[3]));
  MUXF8 \seg_data[3]_INST_0_i_2 
       (.I0(\seg_data[3]_INST_0_i_4_n_0 ),
        .I1(\seg_data[3]_INST_0_i_5_n_0 ),
        .O(\seg_data[3]_INST_0_i_2_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF8 \seg_data[3]_INST_0_i_3 
       (.I0(\seg_data[3]_INST_0_i_6_n_0 ),
        .I1(\seg_data[3]_INST_0_i_7_n_0 ),
        .O(\seg_data[3]_INST_0_i_3_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF7 \seg_data[3]_INST_0_i_4 
       (.I0(data4[3]),
        .I1(data5[3]),
        .O(\seg_data[3]_INST_0_i_4_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[3]_INST_0_i_5 
       (.I0(data6[3]),
        .I1(data7[3]),
        .O(\seg_data[3]_INST_0_i_5_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[3]_INST_0_i_6 
       (.I0(p_0_out[3]),
        .I1(data1[3]),
        .O(\seg_data[3]_INST_0_i_6_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[3]_INST_0_i_7 
       (.I0(data2[3]),
        .I1(data3[3]),
        .O(\seg_data[3]_INST_0_i_7_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[4]_INST_0 
       (.I0(data8[4]),
        .I1(\scan_sel_reg[3]_0 ),
        .I2(\seg_data[4]_INST_0_i_2_n_0 ),
        .I3(\scan_sel_reg[2]_0 ),
        .I4(\seg_data[4]_INST_0_i_3_n_0 ),
        .O(seg_data[4]));
  MUXF8 \seg_data[4]_INST_0_i_2 
       (.I0(\seg_data[4]_INST_0_i_4_n_0 ),
        .I1(\seg_data[4]_INST_0_i_5_n_0 ),
        .O(\seg_data[4]_INST_0_i_2_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF8 \seg_data[4]_INST_0_i_3 
       (.I0(\seg_data[4]_INST_0_i_6_n_0 ),
        .I1(\seg_data[4]_INST_0_i_7_n_0 ),
        .O(\seg_data[4]_INST_0_i_3_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF7 \seg_data[4]_INST_0_i_4 
       (.I0(data4[4]),
        .I1(data5[4]),
        .O(\seg_data[4]_INST_0_i_4_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[4]_INST_0_i_5 
       (.I0(data6[4]),
        .I1(data7[4]),
        .O(\seg_data[4]_INST_0_i_5_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[4]_INST_0_i_6 
       (.I0(p_0_out[4]),
        .I1(data1[4]),
        .O(\seg_data[4]_INST_0_i_6_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[4]_INST_0_i_7 
       (.I0(data2[4]),
        .I1(data3[4]),
        .O(\seg_data[4]_INST_0_i_7_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[5]_INST_0 
       (.I0(data8[5]),
        .I1(\scan_sel_reg[3]_0 ),
        .I2(\seg_data[5]_INST_0_i_2_n_0 ),
        .I3(\scan_sel_reg[2]_0 ),
        .I4(\seg_data[5]_INST_0_i_3_n_0 ),
        .O(seg_data[5]));
  MUXF8 \seg_data[5]_INST_0_i_2 
       (.I0(\seg_data[5]_INST_0_i_4_n_0 ),
        .I1(\seg_data[5]_INST_0_i_5_n_0 ),
        .O(\seg_data[5]_INST_0_i_2_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF8 \seg_data[5]_INST_0_i_3 
       (.I0(\seg_data[5]_INST_0_i_6_n_0 ),
        .I1(\seg_data[5]_INST_0_i_7_n_0 ),
        .O(\seg_data[5]_INST_0_i_3_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF7 \seg_data[5]_INST_0_i_4 
       (.I0(data4[5]),
        .I1(data5[5]),
        .O(\seg_data[5]_INST_0_i_4_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[5]_INST_0_i_5 
       (.I0(data6[5]),
        .I1(data7[5]),
        .O(\seg_data[5]_INST_0_i_5_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[5]_INST_0_i_6 
       (.I0(p_0_out[5]),
        .I1(data1[5]),
        .O(\seg_data[5]_INST_0_i_6_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[5]_INST_0_i_7 
       (.I0(data2[5]),
        .I1(data3[5]),
        .O(\seg_data[5]_INST_0_i_7_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[6]_INST_0 
       (.I0(data8[6]),
        .I1(\scan_sel_reg[3]_0 ),
        .I2(\seg_data[6]_INST_0_i_2_n_0 ),
        .I3(\scan_sel_reg[2]_0 ),
        .I4(\seg_data[6]_INST_0_i_3_n_0 ),
        .O(seg_data[6]));
  MUXF8 \seg_data[6]_INST_0_i_2 
       (.I0(\seg_data[6]_INST_0_i_4_n_0 ),
        .I1(\seg_data[6]_INST_0_i_5_n_0 ),
        .O(\seg_data[6]_INST_0_i_2_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF8 \seg_data[6]_INST_0_i_3 
       (.I0(\seg_data[6]_INST_0_i_6_n_0 ),
        .I1(\seg_data[6]_INST_0_i_7_n_0 ),
        .O(\seg_data[6]_INST_0_i_3_n_0 ),
        .S(\scan_sel_reg[1]_0 ));
  MUXF7 \seg_data[6]_INST_0_i_4 
       (.I0(data4[6]),
        .I1(data5[6]),
        .O(\seg_data[6]_INST_0_i_4_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[6]_INST_0_i_5 
       (.I0(data6[6]),
        .I1(data7[6]),
        .O(\seg_data[6]_INST_0_i_5_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[6]_INST_0_i_6 
       (.I0(p_0_out[6]),
        .I1(data1[6]),
        .O(\seg_data[6]_INST_0_i_6_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
  MUXF7 \seg_data[6]_INST_0_i_7 
       (.I0(data2[6]),
        .I1(data3[6]),
        .O(\seg_data[6]_INST_0_i_7_n_0 ),
        .S(\scan_sel_reg[0]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
