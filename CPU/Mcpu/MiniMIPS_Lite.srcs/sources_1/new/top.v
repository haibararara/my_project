module top(
    input   clk,
    input   locked,
    input   rxd,
    output  txd
    );
    MiniMIPS32_Lite_FullSyS MiniMIPS32_Lite_FullSyS0(
        .clk(clk),
        .locked(locked),
        .rxd(rxd),
        .txd(txd)
    );
endmodule
