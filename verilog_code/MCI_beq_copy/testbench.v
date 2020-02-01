module testbench;

reg [5:0] opCode;
reg wrEnable;
reg [4:0] wrReg;
reg [4:0] rdReg1;
reg [4:0] rdReg2;
reg [31:0] j_addr;
wire [31:0] ALUout;
wire [31:0] A;
wire [31:0] B;
wire zero;
reg [31:0] pc;
reg beq;
wire [31:0] pc_o;
wire [31:0] pc_4;
wire [31:0] inst;
wire pcsrc;
reg [31:0] br_addr;

project p1(wrReg, rdReg1, rdReg2, opCode, A, B, ALUout, zero);
IM obj1(pc, inst, pc_4);
mux m1(pcsrc, pc_4, j_addr, pc_o); //for address selection in branching
fetchmod obj3(inst);
// sig obj2(pc_o, pc);
and obj4(pcsrc, zero, beq);

initial begin
    //$monitor("pc = %b inst = %b pc4=%b pco=%b zero=%b", pc, inst, pc_4, pc_o, zero);
    // zero = 0;

    #10 pc = 0;
        j_addr = 0;
        br_addr = 2;
    #10 $display("After Fetch 1st Instruction pc=%d jadr=%d pc4=%d \n", pc, j_addr, pc_4);
    #10 opCode = inst[31:26];  //instruction 1 beq
        rdReg1 = inst[25:21];
        rdReg2 = inst[20:16]; 
    #10 $display("After De/Ex A=%d B=%d ALUout=%d zero=%d \n", A, B, ALUout, zero);
    #10 j_addr = br_addr;
        beq=1;
    #10 $display("zero=%b j_addr=%d pc_4=%d pc_o=%d \n", zero, j_addr, pc_4, pc_o);
    //#10 $display("A=%d B=%d ALUout=%d zero=%b PC4=%b tgadr=%b",A, B, ALUout, zero, pc_4, pc_o);
    
    #10 pc = pc_o;
    #10 $display("PC=%b \n", pc);
        beq=0;
    #10 opCode = inst[31:26];
        rdReg1 = inst[25:21];
        rdReg2 = inst[20:16];
        wrReg = inst[15:11];
    
    #10 $display("A=%d B=%d ALUout=%d zero=%b pc_4=%d pc_o=%d \n",A, B, ALUout, zero, pc_4, pc_o);

    #10 pc = pc_o;
    #10 $display("PC=%b \n", pc);
    #10 opCode = inst[31:26];
        rdReg1 = inst[25:21];
        rdReg2 = inst[20:16];
        wrReg = inst[15:11];
    
    #10 $display("A=%d B=%d ALUout=%d zero=%b pc_4=%d pc_o=%d \n",A, B, ALUout, zero, pc_4, pc_o);

end


endmodule