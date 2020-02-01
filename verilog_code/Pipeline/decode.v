module decode(
    input [31:0] inst,
    input [31:0] pc,
    output reg [31:0] regdata1,
    output reg [31:0] regdata2,
    output reg [4:0] rt,
    output reg [4:0] rd,
    output reg [31:0] pc_o
);

reg [31:0] regFile [31:0];


initial begin
    regFile[0] = 0;
    regFile[1] = 1;
    regFile[2] = 2;
    regFile[3] = 3;
    regFile[4] = 4;
    regFile[5] = 5;
    regFile[6] = 6;
    regFile[7] = 7;
    regFile[8] = 8;
    regFile[9] = 9;
    regFile[10] = 10;
    regFile[11] = 11;
    regFile[12] = 12;
    regFile[13] = 13;
    regFile[14] = 14;
    regFile[15] = 15;
end

always @(inst) begin
    regdata1 = regFile[inst[25:21]];
    regdata2 = regFile[inst[20:16]];
    rt = inst[20:16];
    rd = inst[15:11];
    pc_o = pc;
    $display("Decode RdReg1=%d RdReg2=%d rt=%d rd=%d pc_d=%d", regdata1, regdata2, rt, rd, pc_o);
end

endmodule