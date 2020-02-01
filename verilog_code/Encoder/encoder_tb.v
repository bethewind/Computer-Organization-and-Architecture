module encoder_tb;
    reg [7:0] reg_in;
    reg enable;
    wire [2:0] out;
    integer i;
    reg [7:0] j;
    encoder obj(reg_in, out, enable);

    initial begin
        j = 8'b00000001;
        reg_in = j;
        $monitor("input = %b output = %b", reg_in, out);
        enable=1;
        for(i=1; i<8; i++) begin
            #10 reg_in = j<<i;
        end
    end
endmodule
