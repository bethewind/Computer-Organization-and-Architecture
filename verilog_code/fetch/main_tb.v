module fetch_tb;
    reg [31:0] insts[2:0];
    reg [31:0] inst;
    integer i;
    reg pc;
    fetchmod obj(inst);

    initial begin

        insts[0] = 32'b00000010101000110011001100110010;
        insts[1] = 32'b00001010101000110011001100110010;
        insts[2] = 32'b00100010101000110011001100110010;
        pc = 0;
        for(i=0; i<3; i++) begin
            #1 inst = insts[i];
            #1 pc = pc+1;
        end
    end
endmodule