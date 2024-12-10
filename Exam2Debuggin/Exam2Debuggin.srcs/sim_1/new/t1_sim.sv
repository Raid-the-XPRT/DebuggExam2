`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2024 09:51:42 PM
// Design Name: 
// Module Name: t1_sim
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
)(
    input logic clk,
    input logic reset_n,
    input logic load,
    input logic [3:0] load_data,
    output logic [3:0] count
);
*/



module t1_sim;

    logic clk=0;
    logic reset_n=0;
    logic load=0;
    logic [3:0]load_data=4'b0000;
    logic [3:0]count;
    
    counter_4bit cntr1(.clk(clk),.reset_n(reset_n),.load(load),.load_data(load_data),.count(count));
    
    
    
    always #10 clk = ~clk;
    
    initial begin 
        #15;
        reset_n=1;
        #40;
        load=1;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        #10;
        $finish;
        end
        
endmodule
