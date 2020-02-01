module alu (input signed [31:0] in1, input signed [31:0] in2, input [3:0] opCode, output signed [31:0] result);

	assign result = opCode == 8 ? in1 + in2 : 0;

endmodule

 