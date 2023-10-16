module 2x1Mux (c,s,a,b);

    input [7:0]a,b;
    input s;
    output [7:0]c;
    assign c = (~s) ? a : b ;
    
endmodule
