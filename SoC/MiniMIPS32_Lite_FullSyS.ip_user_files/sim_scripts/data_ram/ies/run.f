-makelib ies_lib/xilinx_vip -sv \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx2018/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_12 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/data_ram/sim/data_ram.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

