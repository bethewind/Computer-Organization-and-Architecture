module srflipflop(q,clk,rst,s, r);
	output reg q;
	input clk, rst;
	input s;
	input r;

	always @(posedge clk)
	begin
		if (rst == 1) begin
			q = 0;
			end
		else begin
			if(s==0 && r==0)
				q = q;
			else if(s==0 && r==1)
				q=0;
			else if(s==1 && r==0)
				q=1;
		end
	end
endmodule
