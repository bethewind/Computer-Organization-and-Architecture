module testbench;

reg [31:0] inst;

decoder obj(inst);

initial begin
    #10 inst = 32'b00100000000000010000000000000001;
end

endmodule 