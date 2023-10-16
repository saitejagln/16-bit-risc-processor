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