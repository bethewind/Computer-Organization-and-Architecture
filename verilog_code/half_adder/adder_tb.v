module test;
    reg a,b;
    wire s, c;
    half_adder obj(.a(a), .b(b), .s(s), .c(c));
   
    initial begin
    a=0;
    b=0;
    #10 b=1;
    #10 a=1;
        b=0;
    #10
        a=1;
        b=1;
    end
   
    initial begin 
        $monitor("a=%d b=%d s=%d c=%d", a, b, s, c);
    end
endmodule