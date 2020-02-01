module decoder_tb;
    reg [2:0] reg_in;
    reg enable;
    wire [7:0] out;
    integer i;
    decoder obj(reg_in, out, enable);

    initial begin
        $monitor("input = %b output = %b", reg_in, out);
        enable=1;
        for(i=0; i<8; i++) begin
            #10 reg_in = i;
        end
    end
endmodule
