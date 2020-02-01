module mux(sel, inp1, inp2, out);
    input sel;
    input [3:0] inp1;
    input [3:0] inp2;
    output [3:0] out;
    reg [3:0] out;
    
    always @(sel, inp1, inp2) begin
        out = sel?inp2:inp1;
    end
endmodule