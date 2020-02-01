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