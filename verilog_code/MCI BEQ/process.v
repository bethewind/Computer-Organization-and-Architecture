module project (
	// input wrEnable, 
	input [4:0] wrReg, 
	input [4:0] rdReg1, 
	input [4:0] rdReg2,
	input [5:0] opCode,  
	output signed [31:0] result, 
	output zero
);

	wire signed [31:0] rdData1;
	wire signed [31:0] rdData2;
	
	registerFile regFile1 (wrReg, result, rdReg1, rdReg2, rdData1, rdData2);
	alu alu1 (rdData1, rdData2, opCode, result, zero);

endmodule
 