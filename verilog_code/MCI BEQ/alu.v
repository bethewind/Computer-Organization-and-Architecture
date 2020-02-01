module alu (
	input signed [31:0] in1,
	input signed [31:0] in2, 
	input [5:0] opCode, 
	output signed [31:0] result, 
	output wire zero
);

	assign result = opCode == 0 ? in1 + in2 : 0;
	assign zero = (in1==in2) ? 1 : 0;



endmodule

