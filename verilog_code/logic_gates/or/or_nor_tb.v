module test;
    reg a, b, c;
    wire q, f, w, g;
    //orgate obj(.x(a), .y(b), .z(c), .p(q));
    
    nor obj1(q, a, b);
    nor obj2(f, q, q);
    nor obj3(g ,f, c);
    nor obj4(w, g, g);

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
        $monitor("a=%d b=%d c=%d w=%d \n", a, b, c, w);
    end

endmodule