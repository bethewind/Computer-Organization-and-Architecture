module SCI(inst);

input [31:0] inst;


wire [31:0] inst;
wire [7:0] res;

reg rs, rt, rd;
reg [5:0] func;

wire [7:0] sd; 
wire [7:0] td;
wire [7:0] dd;
//wire [7:0] odata;
 
reg read, write, resw;


register_file obj1(.addr(rs), .out(sd), .rw(read), .wdata(res));
register_file obj2(.addr(rt), .out(td), .rw(read), .wdata(res));
register_file obj3(.addr(rd), .out(dd), .rw(write), .wdata(res));
//register_file obj4(.addr(rd), .out(odata), .rw(read), .wdata(res))    

ALU obj5(.func(func), .a(sd), .b(td), .res(res));

always @(inst)
    begin
        read = 0;
        write = 1;
        //res = 0;
        if(inst[31:26]==0 && inst[5:0]==32) begin
            func = inst[5:0];
            rs = inst[25:21];
            rt = inst[20:16];
            rd = inst[15:11];
            func = inst[5:0];

            //res = sd+td;
            $monitor("s=%d t=%d res=%d func=%b", sd, td, res, func);
        end
        else begin
            $display("ERROR");
        end
    end

endmodule