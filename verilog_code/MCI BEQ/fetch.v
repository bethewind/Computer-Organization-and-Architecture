module fetchmod(inst);

input [31:0] inst;

always @(*)
    begin
        if(inst[31:26] == 0) begin
            $display("The instruction is R type"); 
        end
        else if(inst[31:26] == 2) begin
            $display("The instruction is J type");
        end
        else begin
            $display("The instruction is I type"); 
        end
    end

endmodule