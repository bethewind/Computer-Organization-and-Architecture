module RippleCounterTOP;
  reg        clk, reset;
  wire [3:0] out;
  wire [3:0] outp;
  wire [3:0] res;
  reg mux_sel;

  RippleCounter r(clk,reset,out);
  mux g3(mux_sel, out, outp, res);
  not g1(outp[0], out[0]);
  not g1(outp[1], out[1]);
  not g1(outp[2], out[2]);
  not g1(outp[3], out[3]);

  initial begin
    clk=0;
    reset=1;
    mux_sel=1;
    #5 reset=0;

    $monitor("%d", res);
    #40 $finish;
  end

  always #1 clk = ~clk; 
endmodule


