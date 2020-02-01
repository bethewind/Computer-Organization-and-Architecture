module registerFile (input wrEnable, input [4:0] wrReg, input [31:0] wrData, input [4:0] rdReg1, output [31:0] rdData1);

	reg [31:0] regFile [31:0];

	assign rdData1 = regFile[rdReg1];

	always @(*) begin if (wrEnable) begin regFile[wrReg] <= wrData; end end

endmodule
 