module circuit(
    input a,
    input b,
    input c,
    input d,
    output f
);

wire  p,q,r;
// assign p = (b&~c&~d);
// assign r = (~b&~c&d);
// assign f = (p|q|r);
assign p = (~a&b&c);
xor obj(q, b, d);
assign r = (~c&q);
assign f = (p|r);

endmodule