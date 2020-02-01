module IM(
    input [31:0] pc, 
    output reg [31:0] inst,
    output reg [31:0] pc_n
);

reg [31:0] mem [31:0];

initial begin
    mem[0] = 32'b00010000000000000000000000000010; 
    mem[1] = 32'b00000000000001111001000000100010; 
    mem[2] = 32'b00000000010001100001000000100000; 
    mem[3] = 32'b00000000011000100001000000100000; 
end

always @(pc) begin
    inst = mem[pc];
    pc_n = pc+1;
end

endmodule

