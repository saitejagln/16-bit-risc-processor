// Copyright 2023 MERL-DSU

//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at

//        http://www.apache.org/licenses/LICENSE-2.0

//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.

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