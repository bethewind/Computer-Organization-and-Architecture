module ripple_tb;
reg clk; // Input
reg reset; // Input
wire [3:0] q; // Output

ripple_carry_counter r1 (.q(q), .clk(clk), .reset(reset));
initial
clk = 1'b0;
initial
begin
$monitor("%b",q);
reset = 1'b1;
#1 reset = 1'b0;
/*#20 reset = 1'b0;
#180 reset = 1'b1;
#20 reset = 1'b0;*/
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;

end
 endmodule