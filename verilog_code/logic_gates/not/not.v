//test bench file is not_tb.v

module notgate(
    input x,
    output p
);

assign p = ~x;
endmodule

