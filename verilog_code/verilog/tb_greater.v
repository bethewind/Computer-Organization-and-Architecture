module stimulus;
    reg x, y;
    wire z;
    greater obj(.a(x), .b(y), .c(z));

    initial begin
        x=0;
        y=0;
        #10 x=20;
        #10 y=30;    
    end

    initial begin
        $monitor("z=%d", z);
    end
endmodule