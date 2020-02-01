module fetchmod(inst);

input [31:0] inst;

always @(*)
    begin
        if(inst[31:26] == 0) begin
            $display("inst=%b The instruction is R type\n", inst); 
        end
        else if(inst[31:26] == 2) begin
            $display("inst=%b The instruction is J type\n", inst);
        end
        else begin
            $display("inst=%b The instruction is I type\n", inst); 
        end
    end

endmodule