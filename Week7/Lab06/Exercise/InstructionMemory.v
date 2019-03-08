module Instruction_Memory
  (
    input [63:0] Inst_Addr,
    output reg [31:0] Instruction
  );
  
reg [7:0] bytes[15:0];
  initial
  begin
    bytes[0] = 8'b10000011;
    bytes[1] = 8'b00110100;
    bytes[2] = 8'b00000101;
    bytes[3] = 8'b00001111;
    bytes[4] = 8'b10110011;
    bytes[5] = 8'b10000100;
    bytes[6] = 8'b10011010;
    bytes[7] = 8'b00000000;
    bytes[8] = 8'b10010011;
    bytes[9] = 8'b10000100;
    bytes[10] = 8'b00010100;
    bytes[11] = 8'b00000000;
    bytes[12] = 8'b00100011;
    bytes[13] = 8'b00111000;
    bytes[14] = 8'b10010101;
    bytes[15] = 8'b00001110;
  end

  always @(Inst_Addr)
    begin
      Instruction[7:0] = bytes[Inst_Addr];

      Instruction[15:8] = bytes[Inst_Addr+1];

      Instruction[23:16] = bytes[Inst_Addr+2];

      Instruction[31:24] = bytes[Inst_Addr+3];
    end
endmodule
