module core(
    input logic clk, 
    input logic resetn
);

// Instruction Fetching
logic [2:0] imm;
logic [3:0] pc;




// Instruction memory
logic [7:0] inst;
imem imem_inst(
    .addr(pc),
    .inst(inst)
);

// Decoding instruction 
logic J;
logic C;
logic [1:0] D;
logic Sreg;
logic S;

// ALU
logic carry;

// jump logic 
logic pc_load;
assign pc_load = J | (C & carry);


counter_n_bit pc_inst(
    .clk(clk),
    .resetn(resetn),
    .load_data(imm),
    .load(pc_load),
    .en(1'b1),   
    .count(pc)
);

assign J = inst[7];
assign C = inst[6];
assign D = inst[5:4];
assign Sreg = inst[3];
assign imm = inst[2:0];
assign S    =   inst[3];


// Generating enables for register O, A and B
logic enA, enB, enO;
decoder decoder_inst(
    .in(D),
    .out({enA,enB,enO})
);

// registers 
logic [3:0] regIn;
logic [3:0] regA, regB, regO;

logic AluOut;

// Mux for selecting inputs for register (regIn)
mux2x1 mux1(
    .in1(AluOut),
    .in2(imm),
    .sel(Sreg),
    .out(regIn)
);

// Register RA (regA)
register reg_A(
    .clk(clk),
    .resetn(resetn),
    .wen(enA),
    .D(regIn),
    .Q(regA)
);

// Register RB (regB)
register reg_B(
    .clk(clk),
    .resetn(resetn),
    .wen(enB),
    .D(regIn),
    .Q(regB)
);

// Register RO (regO)
register reg_O(
    .clk(clk), //what is coreclk??????
    .resetn(resetn),
    .wen(enO),
    .D(regA),
    .Q(regO)
);



alu alu_inst(
    //.clk(coreclk),
    .opcode(S),
    .a(regA),
    .b(regB),
    .out(AluOut),
    .carry(carry)
);


endmodule : core