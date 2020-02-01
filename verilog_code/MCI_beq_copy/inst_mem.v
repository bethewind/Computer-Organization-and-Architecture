module IM(
    input [31:0] pc, 
    output reg [31:0] inst,
    output reg [31:0] pc_n
);

reg [31:0] mem [31:0];

initial begin
    mem[0] = 32'b00010000000000010000000000000010; // beq 0, 1, 2-addr
    mem[1] = 32'b00000000000000010001000000100010; // sub 0, 1, 2
    mem[2] = 32'b00000000011001000001000000100000; // add 3, 4, 2
    mem[3] = 32'b00000000100001010001000000100000; // add 4, 5, 2
end

always @(pc) begin
    inst = mem[pc];
    pc_n = pc+1;
    // $display("IM accessed ");
end

endmodule

//INST MEM testbench
// module im_tb;

// reg [31:0] pc;
// wire [31:0] inst;
// wire [31:0] pc_n;

// IM obj1(pc, inst, pc_n);

// initial begin
//     $monitor("pc=%d inst=%b pcnew=%d", pc, inst, pc_n);
//     #10 pc = 0;
//     #10 pc = pc_n;
//     #10 pc = pc_n;
// end
// endmodule