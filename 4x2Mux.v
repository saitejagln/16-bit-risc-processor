module 4x2Mux (c1,c2,s,a,b,c,d);

    input [7:0]a,b,c,d;
    input s;
    output [7:0]c1,c2;
    assign c1 = (~s) ? a : c ;
    assign c2 = (~s) ? b : d ;
    
endmodule