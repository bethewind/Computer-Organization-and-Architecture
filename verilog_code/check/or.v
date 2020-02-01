module orgate(
    input x,
    input y,
    output p
);

assign p = (x|y);
endmodule

