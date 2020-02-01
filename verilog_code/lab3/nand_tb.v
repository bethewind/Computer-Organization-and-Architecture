module test;
    reg a, b, c, d;
    wire q;
    nandgate obj(.x(c), .y(d), .p(q));

    initial begin
        a=0;
        b=0;
        c=0;
        d=0;
        #10 d = 1;
        #10 d = 0;
            c = 1;
        #10 d = 1;
        #10 d = 0;
            b = 1;
            c = 0;
        #10 d=1;
        #10 c=1;
            d=0;
        #10 d=1;
        #10 a=1;
            b=0;
            c=0;
            d=0;
        #10 d=1;
        #10 d=0;
            c=1;
        #10 d=1;
        #10 b=1;
            c=0;
            d=0;
        #10 d=1;
        #10 c=1;
            d=0;
        #10 d=1;
    end

    initial begin
        $monitor("a=%d b=%d c=%d d=%d q=%d", a, b, c, d, q);
    end

endmodule