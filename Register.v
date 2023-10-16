module Register(V1,V2,S1,S2,D,clk,RW,WV);

    input clk,RW;
    input [2:0]S1,S2,D;
    input [7:0]WV;
    output [7:0]V1,V2;

    reg [7:0] Register [7:0];

    always @ (posedge clk)
    begin
        if(RW)
            Register[D] <= WV;
    end

    assign V1 =  Register[S1];
    assign V2 =  Register[S2];

    initial begin
        //Register[5] = 32'h00000005;
        //Register[6] = 32'h00000004;
        
    end

endmodule
