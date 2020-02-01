module DFF(q,reset,clk);
  input      reset,clk;
  output reg q;

  always @(posedge clk or reset) begin
    if(reset) begin
      q = 0;
    end
    else begin
      q = ~q; 
   end
 end
endmodule

// module tb_dff;
//   reg reset,clk;
//   wire q;

//   DFF d0 (q, reset, clk);

//   initial begin
//      $monitor("(:q %d)", q);
//     reset = 1'b1;
//     clk = 1'b0;
    
//     #3 reset = 1'b0;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #5 clk = ~clk;
//     #15 $finish;
//   end
 
// //   always #1 clk = ~clk;
// endmodule