`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 05:13:17 AM
// Design Name: 
// Module Name: n_k2ProcessorV1_0_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*
module core(
    input logic clk, 
    input logic resetn
);

    );
*/

module n_k2ProcessorV1_0_sim;


    logic clk=0;
    logic reset=0;
    
    core cr1(.clk(clk),.resetn(reset));
    
    
   always #10 clk = ~clk;
   
   //`define disp $display("%0\t\t %b\t %b\t %b\t %b\t %b\t %b\t  %b\t\t %b\t",$time,clk,pc,instruction,j,carry,d,sreg,imm);
   //`define sampTime #20;

   initial begin    
        #100
        reset=1;
        //$display("TIME\t clk pc\t\t Instruction J\t C\t D\t Sreg\t IMM\t");
        //`disp;
        reset=1;
        #20
        reset=1;
        //`disp;
        //`sampTime;
        #21000;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `disp;
//        `sampTime;
//        `sampTime;

   $finish;
   end
endmodule
