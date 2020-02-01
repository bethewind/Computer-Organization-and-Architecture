module ALU(func, a, b, res);

input [5:0] func;
input [7:0] a;
input [7:0] b;
output [7:0] res;

wire [5:0] func;
wire [7:0] a;
wire [7:0] b;
reg [7:0] res;
 
initial begin
    $display("done %b %b %b", a, b, func);
    case (func)
        6'b100000: //or
            begin $display("done2"); res = a+b; $display("ADD done");end
        default:
            begin $display("Default case"); end
    endcase
end

endmodule