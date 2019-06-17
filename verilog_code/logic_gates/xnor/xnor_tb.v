module test;
    reg a, b, c;
    wire q;
    xnor obj(q, a, b, c);

    initial begin
        a=0;
        b=0;
        c=0;
        #10 c = 1;
        #10 b = 1;
            c = 0;
        #10 c = 1;
        #10 a = 1;
            b = 0;
            c = 0;
        #10 c=1;
        #10 b=1;
            c=0;
        #10 c=1;
    end

    initial begin
        $monitor("a=%d b=%d c=%d q=%d \n", a, b, c, q);
    end

endmodule