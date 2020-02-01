module ALU_testbench;
    reg a, b;
    reg [2:0] opcode;
    wire alu_out, car;
    integer i;

    ALU obj(opcode, alu_out, car, a, b);

    initial begin
        a = 1;
        b = 0;
        
        $monitor("opcode=%b a=%b b=%b alu_out=%b carry=%b", opcode, a, b, alu_out, car);
        for(i=0; i<8; i=i+1) begin
            if (i==0) begin opcode = 3'b000; end 
            else begin #10 opcode = opcode + 3'b001; end
        end
    end
endmodule