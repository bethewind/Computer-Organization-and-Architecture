module test;
    reg a, b, c;
    wire q, f, w, g,r;
    //orgate obj(.x(a), .y(b), .z(c), .p(q));
    
    nand obj1(q, a, a);
    nand obj2(f, b, b);
    nand obj3(g ,f, q);
    nand obj4(w, g, g);
    nand obj5(y, c, c);
    nand obj6(r,w,y);

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