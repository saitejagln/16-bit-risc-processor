module ALU(Result,C,Z,A,B,ALUSelect);

    input [7:0]A,B;
    input [2:0]ALUSelect;
    output C,Z;
    reg Z;
    output [7:0]Result;  
    assign {C,Result} = (ALUSelect == 3'b000) ? A+B :
                        (ALUSelect == 3'b001) ? (A+(~B+1)) :
                        (ALUSelect == 3'b010) ? A & B :
                        (ALUSelect == 3'b100) ? A | B :
                        (ALUSelect == 3'b110) ? A+B :
                        {8{1'b0}};
    assign Z = (ALUSelect==3'b110 )? Z : &(~Result);
endmodule
