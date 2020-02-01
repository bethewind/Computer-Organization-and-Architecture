module srtestbench;

wire q;
reg s, r;
reg rst, clk;
reg [1:0] i;
integer j;
srflipflop obj1(q,clk,rst,s,r);

initial begin
$monitor("s=%b r=%b q=%b", s, r, q);
    rst = 1'b0;
    clk = 1'b1;
    #10 rst = 1'b1;
    #10 rst = 1'b0;    
    i=0;
    j=0;
    while(j<10) begin
        if(i<=2) begin
        #10 s= i[1];
            r= i[0];
        #10 i=i+1;
        end
        else
            i=0;
        j=j+1;
    end

    #10 $finish;
end

always #5 clk = ~clk;

endmodule

