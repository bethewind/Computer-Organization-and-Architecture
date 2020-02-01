module demux18(
    din, 
    sel,
    dout0,
    dout1,
    dout2,
    dout3,
    dout4,
    dout5,
    dout6,
    dout7
);
input din;
input [2:0] sel;
output dout0;
output dout1;
output dout2;
output dout3;
output dout4;
output dout5;
output dout6;
output dout7;

reg dout0;
reg dout1;
reg dout2;
reg dout3;
reg dout4;
reg dout5;
reg dout6;
reg dout7;


always @(din or sel)
begin
    case(sel)
        3'b000 : begin
                    dout0 = din;
                    dout1 = 0;
                    dout2 = 0;
                    dout3 = 0;
                    dout4 = 0;
                    dout5 = 0;
                    dout6 = 0;
                    dout7 = 0;
                end
        3'b001 : begin 
                    dout0 = 0;
                    dout1 = din;
                    dout2 = 0;
                    dout3 = 0;
                    dout4 = 0;
                    dout5 = 0;
                    dout6 = 0;
                    dout7 = 0;
                end
        3'b010 : begin 
                    dout0 = 0;
                    dout1 = 0;
                    dout2 = din;
                    dout3 = 0;
                    dout4 = 0;
                    dout5 = 0;
                    dout6 = 0;
                    dout7 = 0;
                end
        3'b011 : begin 
                    dout0 = 0;
                    dout1 = 0;
                    dout2 = 0;
                    dout3 = din;
                    dout4 = 0;
                    dout5 = 0;
                    dout6 = 0;
                    dout7 = 0;                    
                end
        3'b100 : begin 
                    dout0 = 0;
                    dout1 = 0;
                    dout2 = 0;
                    dout3 = 0; 
                    dout4 = din;
                    dout5 = 0;
                    dout6 = 0;
                    dout7 = 0;                   
                end
        3'b101 : begin 
                    dout0 = 0;
                    dout1 = 0;
                    dout2 = 0;
                    dout3 = 0; 
                    dout4 = 0;
                    dout5 = din;
                    dout6 = 0;
                    dout7 = 0;                   
                end
        3'b110 : begin 
                    dout0 = 0;
                    dout1 = 0;
                    dout2 = 0;
                    dout3 = 0;
                    dout4 = 0;
                    dout5 = 0;
                    dout6 = din;
                    dout7 = 0;                    
                end
        3'b111 : begin 
                    dout0 = 0;
                    dout1 = 0;
                    dout2 = 0;
                    dout3 = 0;
                    dout4 = 0;
                    dout5 = 0;
                    dout6 = 0;
                    dout7 = din;                    
                end
    endcase
end
endmodule