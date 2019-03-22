module tb
  (
  );
  reg [6:0] Opcode;
  wire Branch;
  wire MemWrite;
  wire MemRead;
  wire RegWrite;
  wire MemtoReg;
  wire ALUSrc;
  
  reg[3:0] Funct;
  wire[3:0] Operation;
  
  
  top t
  (
    .Funct(Funct),
    .Opcode(Opcode),
    .Branch(Branch),
    .MemWrite(MemWrite),
    .MemRead(MemRead),
    .RegWrite(RegWrite),
    .MemtoReg(MemtoReg),
    .ALUSrc(ALUSrc),
    .Operation(Operation)
  );
  
  initial
  begin
    Opcode = 7'b0000000;
    Funct = 4'b1111;
    #200 Funct = 4'b1000;
    
    #200 Opcode = 7'b0000011;
    Funct = 4'b1111;
    #200 Funct = 4'b1000;
    
    #200 Opcode = 7'b0100011;
    Funct = 4'b1111;
    #200 Funct = 4'b1000;
    
    #200 Opcode = 7'b1100011;
    Funct = 4'b1111;
    #200 Funct = 4'b1000;
    
    #200 Opcode = 7'b0110011;
    Funct = 4'b1111;
    #200 Funct = 4'b0000;
    #200 Funct = 4'b1000;
    #200 Funct = 4'b0111;
    #200 Funct = 4'b0110;

  end
endmodule