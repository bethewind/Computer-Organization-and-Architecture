module execute(
    input [31:0] pc,
    input [31:0] regData1,
    input [31:0] regData2,
    input [4:0] rt,
    input [4:0] rd,
    output reg [31:0] pc_n,
    output reg zero,
    output reg [31:0] ALUout,
    output reg [4:0] r_d
);

always @(regData1 or regData2) begin
    pc_n = pc;
    ALUout = regData1+regData2;
    zero = (regData1==regData2)?1:0;
    r_d = rd;
    $display("ALUout=%d zero=%d pc=%d regDst=%d", ALUout, zero, pc_n, r_d);
end

endmodule
