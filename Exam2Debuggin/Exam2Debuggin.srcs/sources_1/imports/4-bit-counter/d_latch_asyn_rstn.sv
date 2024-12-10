`timescale 1ns / 1ps


module d_latch_asyn_rstn(
    input logic clk,
    input logic D,
    input logic reset_n,
    output logic Q

);
    //logic S, R;

    //assign S = D;
    //assign R = D;

    logic Qn;
    logic nand1_o, nand2_o,Q1;
    
    nand (nand1_o, clk, D); //added clk and d
    nand (nand2_o, clk, ~D); //added clk and ~d
    nand (Q1, nand1_o, Qn);    
    nand (Qn, nand2_o, Q);
    and (Q, reset_n, Q1);//to make it active low
endmodule                                                                                                                                                            