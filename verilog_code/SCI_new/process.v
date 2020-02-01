module project (input wrEnable, input [4:0] wrReg, input [4:0] rdReg1, input [15:0] imme,input [3:0] opCode, output signed [31:0] result, input selCh, input [31:0] selData);

	wire [31:0] selected;
	wire signed [31:0] rdData1;
	wire signed [31:0] immediate;
	registerFile regFile1 (wrEnable, wrReg, selected, rdReg1, rdData1);
	alu alu1 (rdData1, imme, opCode, result);
	mux m1 (selCh, selData, result, selected);

endmodule
 