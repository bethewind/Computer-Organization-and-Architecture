module test;
    reg a, b, c;
    wire q, f, w, g,r;
    //orgate obj(.x(a), .y(b), .z(c), .p(q));
    
    nor obj1(q, a, a);
    nor obj2(f, b, b);
    nor obj3(g ,f, q);
    nor obj4(w, g, g);
    nor obj5(y, c, c);
    nor obj6(r,w,y);

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
        $monitor("a=%d b=%d c=%d r=%d \n", a, b, c, r);
    end

endmodule