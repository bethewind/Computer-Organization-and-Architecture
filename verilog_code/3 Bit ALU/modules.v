module orgate(
    input x,
    input y,
    output p
);
assign p = (x|y);
endmodule

module andgate(
    input x,
    input y,
    output p
);
assign p = (x&y);
endmodule

module notgate(
    input x,
    output p
);
assign p = ~x;
endmodule

module norgate(
    input x,
    input y,
    output p
);
assign p = ~(x|y);
endmodule

module nandgate(
    input x,
    input y,
    output p
);
assign p = ~(x&y);
endmodule

module noop(
    input x,
    output p
);
assign p = x;
endmodule

module half_adder(
    input a,
    input b,
    output s,
    output c
);
assign s = (a^b);
assign c = (a&b);
endmodule

module full_adder(
    input a,
    input b,
    input c,
    output s,
    output cr
);
assign s = (a^b^c);
assign cr = (a&b|b&c|c&a);
endmodule   