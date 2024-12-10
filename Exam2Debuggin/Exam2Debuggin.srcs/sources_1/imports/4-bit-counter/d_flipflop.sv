`timescale 1ns / 1ps


module d_flipflop(
    input logic clk, 
    input logic D, 
    input logic reset_n,
    output logic Q
);

logic d_latch0_o;
logic d_latch0_clk;
logic d_latch1_clk;

//assign d_latch0_clk = clk;
//assign d_latch1_clk = ~clk;

d_latch_asyn_rstn d_latch0(
    .clk(clk),
    .D(D),
    .reset_n(reset_n),
    .Q(d_latch0_o) 
);

d_latch_asyn_rstn d_latch1(
    .clk(~clk),
    .D(d_latch0_o),
    .reset_n(reset_n),
    .Q(Q)
);

endmodule : d_flipflop