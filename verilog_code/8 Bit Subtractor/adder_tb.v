module test;
    reg p,q,r;
    wire s,t;
    // wire s, cr;
    reg [7:0] a;
    reg [7:0] b;
    reg [7:0] ans;
    reg [8:0] cry;
    reg [7:0] tmp;
    full_adder obj1(.a(p), .b(q), .c(r), .s(s), .cr(t));


    
    integer i;
    initial begin
        #10 a = 8'h05;
            b = -3;
            cry = 8'h00;
            ans = 8'h00;

        for(i=0; i<7; i=i+1) begin
            #10 p=a[i];
                q=b[i];
                r=cry[i];
            #10 cry[i+1]=t;
                ans[i]=s;
            $display("s = %d c = %d", ans[i], cry[i+1]);
        end
    end
endmodule