module sig(
    input [31:0] pc_o,
    output [31:0] pc
);

assign pc = pc_o;

endmodule