module stimulus;
    reg a, b;
    wire c;
    comparator obj(.x(a), .y(b), .z(c));

    initial begin
        a=0;
        b=0;

        #10 a = 1;
        #10 b = 1;
        #10 b = 0;
        #10 a = 1;
    end

    initial begin
        $monitor("a=%d b=%d c=%d \n", a, b, c);
    end

endmodule