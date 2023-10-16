module Instruction_Memory(D,A);

  input [7:0]A;
  output [11:0]D;

  reg [11:0] mem [255:0];
  
  assign D = mem[A];

  initial begin
    //$readmemh("memfile.hex",mem);
  end


/*
  initial begin
    //mem[0] = 32'hFFC4A303;
    //mem[1] = 32'h00832383;
    // mem[0] = 32'h0064A423;
    // mem[1] = 32'h00B62423;
    mem[0] = 32'h0062E233;
    // mem[1] = 32'h00B62423;

  end
*/
endmodule