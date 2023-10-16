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

module Control_Unit(op,s1,s2,d,jc,lc,dwc,rwc,imm,ins);
    input [11:0]ins;
    output [7:0] imm;
    output [2:0] op,s1,s2,d;
    output jc,lc,dwc,rwc;
    assign op = ins[2:0]; 
    assign d = ins[5:3]; 
    assign  s1 = ins[8:6]; 
    assign  s2 = ins[11:9]; 
    assign jc  = (ins[2:0]==3'b110)?1:0;
    assign lc  = (ins[2:0]==3'b011)?1:0;
    assign dwc= (ins[2:0]==3'b101)?1:0;
    assign rwc= (ins[2:0]==3'b110 |3'b101 )?0:1;
    assign imm = ins[11:4];
endmodule