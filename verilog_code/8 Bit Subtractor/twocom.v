module twoscomplement(
    input [7:0] x,
    output [7:0] y
);

assign y[7:0] = ~x[7:0] + 8'h01;

endmodule