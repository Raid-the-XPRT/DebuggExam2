module counter_n_bit#(
    parameter n = 4
)(
    input logic clk,
    input logic resetn,
    input logic load,
    input logic en,
    input logic [n - 1: 0] load_data,
    output logic [n - 1: 0] count
);

    always_ff @(posedge clk, negedge resetn) begin 
        if(~resetn) count <= 0;
        else if(en) count <= count + 1;        
        else if(load) count <= load_data;
        else count <= count;
        end
endmodule : counter_n_bit