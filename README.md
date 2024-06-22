This project implements a 16-bit RISC MIPS processor with Harvard architecture, utilizing a non-pipelined design to prioritize simplicity, cost, and power consumption.
The compact instruction set, consisting of ADD, SUB, OR, AND, JZ, LOAD, and STORE operations, enables efficient arithmetic, logical, data transfer, and conditional operations.

MICROARCHITECUTRAL FEATURES
_> Interfaced to data memory of size 256 x 16 bits
_> 8 bit address bus
_> 16 registers, each of size 2 bytes ( RA, RB…RP)
_> ALU capable of 16 bit arithmetic operations
_> Instruction memory of size 256 x 16 bits ( ranging from 0 to 255 )
_> Opcode of constant length ( 16 bit for all instructions )
_> A separate adder block was used to get the next value for program counter
_> Jump instructions are added in their own 8 bit jump adder
_> Zero flag (ZF) given as output with result from ALU which is used in JUMP instruction

The instruction format and other details are mentioned in the ppt in a more understandable format
