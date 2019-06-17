module test;
    reg a;
    wire q;
    notgate obj(a, q);

    initial begin
        a=0;
        #10 a = 1;
    end

    initial begin
        $monitor("a=%d q=%d \n", a, q);
    end

endmodule