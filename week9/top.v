module top
  (
    input[6:0] Opcode,
    input[3:0] Funct,
    output Branch,
    output MemWrite,
    output MemRead,
    output RegWrite,
    output MemtoReg,
    output ALUSrc,
    output [3:0] Operation
  );
  wire[1:0] ALUOp;
  
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
  
  ALU_Control ALUC
  (
    .ALUOp(ALUOp),
    .Funct(Funct),
    .Operation(Operation)
  );
  
endmodule
  
  