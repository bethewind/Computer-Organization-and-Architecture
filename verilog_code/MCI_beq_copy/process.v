module project (
	// input wrEnable, 
	input [4:0] wrReg, 
	input [4:0] rdReg1, 
	input [4:0] rdReg2,
	input [5:0] opCode,  
	output signed [31:0] A,
	output signed [31:0] B,
	output signed [31:0] ALUout, 
	output zero
);

	wire signed [31:0] A;
	wire signed [31:0] B;
	
	registerFile regFile1 (wrReg, ALUout, rdReg1, rdReg2, A, B);
	alu alu1 (A, B, opCode, ALUout, zero);

endmodule
 