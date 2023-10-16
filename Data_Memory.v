module Data_Memory(clk,DW,RD,A,D);

    input clk,DW;
    input [7:0]A,D;
    output [7:0]RD;
    reg [7:0] mem [255:0];
    always @ (posedge clk)
    begin
        if(DW)
            mem[A] <= D;
    end
    assign RD =  mem[A];
endmodule