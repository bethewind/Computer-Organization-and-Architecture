module testbench;

wire [5:0] opCode;
wire wrEnable;
reg [4:0] wrReg;
reg [4:0] rdReg1;
reg [4:0] rdReg2;
reg [31:0] j_addr;
wire [31:0] result;
wire zero;
reg [31:0] pc;
wire [31:0] pc_o;
wire [31:0] pc_4;
reg [31:0] inst;

project p1(wrReg, rdReg1, rdReg2, opCode, result, zero);
IM obj1(pc, inst, pc_4);
mux m1(zero, pc_4, j_addr, pc_o); 
fetchmod obj3(inst);


initial begin
    $monitor("pc = %b inst = %b pc4=%b pco=%b zero=%b", pc, inst, pc_4, pc_o, zero);


    #10 pc = 0;
        j_addr = 0;
    #10 opCode = inst[31:26];  
        rdReg1 = inst[25:21];
        rdReg2 = inst[20:16]; 

    #10 j_addr = inst[15:0];

    #10 pc = pc_o;
      
    #10 opCode = inst[31:26];
        rdReg1 = inst[25:21];
        rdReg2 = inst[20:16];
        wrReg = inst[15:11];
    
    #10 pc = pc_o;

    #10 opCode = inst[31:26];
        rdReg1 = inst[25:21];
        rdReg2 = inst[20:16];
        wrReg = inst[15:11];

end


endmodule