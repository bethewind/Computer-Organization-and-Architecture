module mux (
	input selCh, 
	input [31:0] inCh0, 
	input [31:0] inCh1, 
	output [31:0] selData
);

	assign selData = selCh == 0 ? inCh0 :
			  selCh == 1 ? inCh1 : 0;

endmodule
