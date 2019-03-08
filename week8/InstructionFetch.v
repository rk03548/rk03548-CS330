module Instruction_Fetch
  (
    input clk,
    input reset,
    output wire [31:0] instruction
  );
  
  wire [63:0] PCout;
  wire [63:0] adderout;
  
  Program_Counter PC
  (
    .clk(clk),
    .reset(reset),
    .PC_in(adderout),
    .PC_out(PCout)
  );
  
  adder a
  (
    .a(PCout),
    .b(64'd4),
    .c(adderout)
  );
  
  Instruction_Memory IM
  (
    .Inst_Addr(PCout),
    .Instruction(instruction)
  );
endmodule