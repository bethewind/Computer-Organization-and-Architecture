module alu (
	input signed [31:0] A,
	input signed [31:0] B, 
	input [5:0] opCode, 
	output signed [31:0] ALUout, 
	output wire zero
);

	assign ALUout = opCode == 0 ? A + B : 0;
	assign zero = (A==B) ? 1 : 0;

endmodule

//ALU testbench
// module alu_tb;
// reg [31:0] in1;
// reg [31:0] in2;
// reg [5:0] opCode;
 
// wire [31:0] result;
// wire zero;

// alu obj(in1, in2, opCode, result, zero);

// initial begin

// 	//$monitor("a=%d b=%d result=%d zero=%d", in1, in2, result, zero);

// 	#10 opCode = 0;
// 		in1 = 1;
// 		in2 = 3;
// 	#10 in1 = 3;
// 		in2 = 3;
// 	#10 in1 = 11;
// 		in2 = 11;
// end

// endmodule	