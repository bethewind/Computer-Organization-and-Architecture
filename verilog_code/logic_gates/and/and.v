//test bench file - and_tb.v in same directory

module andgate(
    input x,
    input y,
    input z,
    output p
);

assign p = (x&y&z);
endmodule

