module norgate(
    input x,
    input y,
    input z,
    output p
);

assign p = ~(x|y|z);
endmodule

