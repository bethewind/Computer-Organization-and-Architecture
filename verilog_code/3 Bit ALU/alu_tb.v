module test;
    reg [2:0] a;
    reg po, qo, pa, qa, pn, pno, qno, pna, qna, pop, pha, qha, pfa, qfa, rfa;

    orgate obj1(.x(po), .y(qo), .p(ro));
    andgate obj2(.x(po), .y(qo), .p(ro));
    notgate obj3(.x(pn), .p(rn));
    norgate obj4(.x(pno), .y(qno), .p(rno));
    nandgate obj5(.x(pna), .y(qna), .p(rna));
    noop obj6(.x(pop), .p(rop));
    half_adder obj7(.a(pha), .b(qha), .s(sumh), .c(carryh));
    full_adder obj8(.a(pfa), .b(qfa), .c(rfa), .s(sumf), .cr(carryf));
    // always @(*)
    
    initial begin    
        a = 3'b111; //selection
        po = 1'b0;
        qo = 1'b1;

        pa = 1'b0;
        qa = 1'b1;

        pn = 1'b1;

        pno = 0;
        qno = 1;

        pna = 0;
        qna = 1;

        pop = 0;

        pha = 1;
        qha = 1;

        pfa = 1;
        qfa = 1;
        rfa = 1;

        case (a)
            3'b000: //or
                begin
                $monitor("OR p=%d q=%d r=%d", po, qo, ro);
                end
            3'b001: //and
                begin
                $monitor("AND p=%d q=%d r=%d", pa, qa, ra);
                end
            3'b010: //not
                begin
                $monitor("NOT p=%d r=%d", pn, rn);
                end
            3'b011: //nor
                begin
                $monitor("NOR p=%d q=%d r=%d", pno, qno, rno);
                end
            3'b100: //nand
                begin
                $monitor("NAND p=%d q=%d r=%d", pna, qna, rna);
                end
            3'b101: //no operration
                begin
                $monitor("NOOP p=%d r=%d", pop, rop);
                end
            3'b110: //half adder
                begin
                $monitor("H adder p=%d q=%d sum=%d cry=%d", pha, qha, sumh, carryh);
                end
            3'b111:
                begin
                $monitor("F adder p=%d q=%d r=%d sum=%d cry=%d", pfa, qfa, rfa, sumf, carryf);
                end
            // default: 
        endcase
    end

    initial begin
        #10 a = 3'b000;
        #10 a = 3'b001;
    end

endmodule