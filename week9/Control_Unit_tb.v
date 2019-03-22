module Control_Unit_tb
  (
  );
  reg [6:0] Opcode;
  wire Branch;
  wire MemWrite;
  wire MemRead;
  wire RegWrite;
  wire MemtoReg;
  wire ALUSrc;
  wire [1:0] ALUOp;
  
  Control_Unit CU
  (
    .Opcode(Opcode),
    .Branch(Branch),
    .MemWrite(MemWrite),
    .MemRead(MemRead),
    .RegWrite(RegWrite),
    .MemtoReg(MemtoReg),
    .ALUSrc(ALUSrc),
    .ALUOp(ALUOp)
  );
  
  initial
  begin
    Opcode = 7'b0110011;
    #200 Opcode = 7'b0000011;
    #200 Opcode = 7'b0100011;
    #200 Opcode = 7'b1100011;
    #200 Opcode = 7'b0000000;
  end
  
endmodule