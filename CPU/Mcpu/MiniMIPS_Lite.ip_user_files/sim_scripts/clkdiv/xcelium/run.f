-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clkdiv/clkdiv_clk_wiz.v" \
  "../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clkdiv/clkdiv.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

