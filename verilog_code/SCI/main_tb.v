module sci_tb;

    reg [31:0] inst;
    SCI obj1(.inst(inst));
    
    initial begin
        inst = 32'b00000000000000010001000000100000;
    end
endmodule   