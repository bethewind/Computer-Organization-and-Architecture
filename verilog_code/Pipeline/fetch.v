// add 0, 1, 2;
// add 3, 4, 5;
// add 6, 7, 8;
// add 9, 10, 11;
// aa 12, 13, 14;

module fetch(
    input [31:0] pc,
    output reg [31:0] pc_4,
    output reg [31:0] inst
);

reg [31:0] instmem [31:0];

initial begin
    instmem[0] = 32'b00000000001000100000000000100000;
    instmem[1] = 32'b00000000100001010001100000100000;
    instmem[2] = 32'b00000000111010000011000000100000;
    instmem[3] = 32'b00000001010010110100100000100000;
    instmem[4] = 32'b00000001101011100110000000100000;
end

always @(pc) begin
    inst = instmem[pc];
    pc_4 = pc+1;
    $display("Fetch PC=%d inst=%b", pc_4, inst);
end

endmodule

// module tb;
// reg [31:0] pc;
// wire [31:0] pc_4;
// wire [31:0] inst;

// fetch obj(pc, pc_4, inst);
// initial begin
//     #10 pc = 0;
// end

// endmodule