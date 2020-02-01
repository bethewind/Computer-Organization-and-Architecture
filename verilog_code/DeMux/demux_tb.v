module tb_demux;

    reg din;
    reg [2:0] sel;

    wire dout0;
    wire dout1;
    wire dout2;
    wire dout3;
    wire dout4;
    wire dout5;
    wire dout6;
    wire dout7;


    demux18 gate1 (.din(din), .sel(sel), .dout0(dout0), .dout1(dout1), .dout2(dout2), .dout3(dout3), .dout4(dout4), .dout5(dout5), .dout6(dout6), .dout7(dout7));

    initial begin
        din = 1;
        sel = 0;
        #5 sel = 0;
        #5 sel = 1;
        #5 sel = 2;
        #5 sel = 3;
        #5 sel = 4;
        #5 sel = 5;
        #5 sel = 6;
        #5 sel = 7;
    end

    initial $monitor("din=%b, sel=%b, dout0=%b, dout1=%b, dout2=%b, dout3=%b, dout4=%b, dout5=%b, dout6=%b, dout7=%b", din, sel, dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7);

endmodule