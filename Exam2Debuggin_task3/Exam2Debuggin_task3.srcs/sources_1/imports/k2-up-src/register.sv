module register#(
    parameter n = 4
)(
    input logic clk,
    input logic resetn,
    input logic wen,
    input logic [n-1:0]D,
    output logic [n-1:0]Q
);

    always_ff @(posedge clk, negedge resetn) //move at poitive edge clock and add reset in sesitivity list
    begin 
        if(~resetn) Q <= 0;
        else if(wen) Q <= D;
    end
endmodule : register