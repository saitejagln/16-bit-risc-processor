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