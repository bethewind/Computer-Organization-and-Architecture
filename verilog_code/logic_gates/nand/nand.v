//testbench file - nand_tb.v

module nandgate(
    input x,
    input y,
    input z,
    output p
);

assign p = ~(x&y&z);
endmodule

