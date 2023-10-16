module PC_Adder (b,a);

    input [7:0]a;
    output [7:0]b;

    assign b = a + 8b'00000001;
    
endmodule