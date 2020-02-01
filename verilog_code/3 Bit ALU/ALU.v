module ALU(opcode, res, cry, a, b); //for now carry not there

input [2:0] opcode;
input a,b;
output res, cry;

wire a,b;
wire [2:0] opcode;
reg res, cry;


andgate obj2(.x(a), .y(b), .p(r2));
notgate obj3(.x(a), .p(r3));
norgate obj4(.x(a), .y(b), .p(r4));
nandgate obj5(.x(a), .y(b), .p(r5));
noop obj6(.x(a), .p(r6));
half_adder obj7(.a(a), .b(b), .s(r7), .c(r8));
//full_adder obj8(.a(pfa), .b(qfa), .c(rfa), .s(sumf), .cr(carryf));


always @(*)
begin
cry=0;
if(opcode==3'b000) begin
    orgate obj1(.x(a), .y(b), .p(r1));
end
case (opcode)
    0: //or
        begin res = r1; $display("OR operation"); end
    1: //and
        begin res = r2; $display("AND operation"); end
    2: //not
        begin res = r3; $display("NOT operation"); end
    3: //nor
        begin res = r4; $display("NOR operation"); end
    4: //nand
        begin res = r5; $display("NAND operation"); end
    5: //no operration
        begin res = r6; $display("NO operation"); end
    6: //half adder
        begin res = r7; cry=r8; $display("HALF ADDER operation"); end
    7: //xor
        begin res = a^b; $display("XOR operation"); end
endcase
end
endmodule