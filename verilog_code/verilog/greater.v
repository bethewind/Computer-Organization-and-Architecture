module greater(
    input a,
    input b,
    output c
);
if (a == b) begin
    assign c = 1;
end
else begin 
    assign c = 2;
end
endmodule