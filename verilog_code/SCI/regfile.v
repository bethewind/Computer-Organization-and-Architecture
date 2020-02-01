module register_file(addr, out, wdata, rw);

input [4:0] addr;
input rw;
input [7:0] wdata;
output [7:0] out;

wire [4:0] addr;
wire [7:0] wdata;
wire rw;
reg [7:0] out;

reg [7:0] data [0:3];

initial begin 
    data[0] = 2;
    data[1] = 5;
    data[2] = 0;
    data[3] = 3;
end 

always @(*)
begin

    if(rw == 0) begin
        out = data[addr];
    end
    else begin
        data[addr] = wdata;
    end
end

endmodule