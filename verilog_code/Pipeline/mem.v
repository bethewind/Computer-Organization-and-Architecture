module mem(
   input [31:0] ALUout,
   input [4:0] r_d,
   output reg [31:0] ans,
   output reg [4:0] r_do
);

always @(*) begin
    ans = ALUout;
    r_do = r_d;
    $display("Mem/WB res=%d r_d=%d", ans, r_do);
end

endmodule