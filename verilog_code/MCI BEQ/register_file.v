module registerFile (
	// input wrEnable, 
	input [4:0] wrReg, 
	input [31:0] wrData, 
	input [4:0] rdReg1, 
	input [4:0] rdReg2,
	output [31:0] rdData1,
	output [31:0] rdData2
);

	reg [31:0] regFile [31:0];

	assign rdData1 = regFile[rdReg1];
	assign rdData2 = regFile[rdReg2];
	
	initial begin
		regFile[0] = 2;
		regFile[1] = 2;
		regFile[3] = 2;
		regFile[4] = 3;	
	end

	always @(*) begin 
		// $display("RF accessed");
		// if (wrEnable) begin 
		regFile[wrReg] <= wrData; 
		// end 
	end

endmodule


 
