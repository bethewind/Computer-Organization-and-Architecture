module RippleCounter(clk,reset,out);
  input        clk, reset;
  output [3:0] out; // 4bit

  DFF ax(out[0],reset,clk);
  DFF bx(out[1],reset,out[0]);
  DFF cx(out[2],reset,out[1]);
  DFF dx(out[3],reset,out[2]);
endmodule 