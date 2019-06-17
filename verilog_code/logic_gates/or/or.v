//test bench file is or_tb.v in same directory

module orgate(
    input x,
    input y,
    input z,
    output p
);

assign p = (x|y|z);
endmodule

