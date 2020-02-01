module testbench;

reg [31:0] inst;
reg [3:0] opCode;
// reg [4:0] rs;
reg [4:0] rt;
reg [15:0] imme;

reg wrEnable;
reg [4:0] wrReg;
reg [4:0] rdReg1;
reg [31:0] selData;
reg selCh;
wire [31:0] result;

project p1(wrEnable, wrReg, rdReg1, imme, opCode, result, selCh, selData);

initial begin

    $monitor("rs_data=2 imme=%b add_result=%b", imme, result);
        selCh = 0;
    #10 inst = 32'b00100000000000010000000000000001;
    //write some value in register 0
    #10 wrEnable = 1;  
	    wrReg = 0;
	    selData = 2;
    #10 wrEnable = 0;
        opCode = inst[31:26];
        rdReg1 = inst[25:21];
        rt = inst[20:16];
        imme = inst[15:0];
end

endmodule