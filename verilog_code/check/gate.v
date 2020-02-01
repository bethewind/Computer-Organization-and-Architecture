module circuit(
    input a,
    input b,
    input c,
    input d,
    output f
);

wire  p,q,r,h,k;
notgate obj1(.x(a), .p(h));
andgate obj2(.x(h), .y(b), .z(c), .p(p));
xor obj3(q, b, d);
notgate obj4(.x(c), .p(k));
andgate2 obj5(.x(k), .y(q), .p(r));
orgate obj6(.x(p), .y(r), .p(f));

endmodule