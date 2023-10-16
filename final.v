`include "2x1Mux.v"
`include "Instruction_Memory.v"
`include "Register.v"
`include "Countrol_Unit.v"
`include "ALU.v"
`include "Data_Memory.v"
`include "PC_Adder.v"
`include "PC.v"
`include "4x2Mux.v"

module final(clk,rst);
wire [2:0] s1,s2,d,op;
wire jc,lc,dwc,rwc,zf,c,fjc;
wire [7:0]imm,4mi1,4mi2,st,ip,alu1,alu2,alur,memdata,ipnext,ipplus1;
wire [11:0] ins;
Control_Unit (op,s1,s2,d,jc,lc,dwc,rwc,imm,ins);
Register(4mi1,4mi2,s1,s2,d,clk,rwc,st);
4x2Mux (alu1,alu2,jc,4mi1,4mi2,imm,ip);
2x1Mux load (st,lc,alur,memdata);
ALU(alur,c,zf,alu1,alu2,op);
Data_Memory(clk,dwc,memdata,4mi1,4mi2);
PC_Adder (ipplus1,ip);
and(fjc,zf,jc);
2x1Mux jmp (ipnext,fjc,ipplus1,alur);
PC(clk,rst,ip,ipnext);
Instruction_Memory(ins,ip);
endmodule