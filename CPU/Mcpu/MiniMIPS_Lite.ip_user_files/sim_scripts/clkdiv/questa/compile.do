vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic" \
"E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" \
"../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clkdiv/clkdiv_clk_wiz.v" \
"../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clkdiv/clkdiv.v" \

vlog -work xil_defaultlib \
"glbl.v"

