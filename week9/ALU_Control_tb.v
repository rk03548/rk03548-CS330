module ALU_Control_tb
  (
  );
  reg[1:0] ALUOp;
  reg[3:0] Funct;
  wire[3:0] Operation;
  
  ALU_Control AC
  (
    .ALUOp(ALUOp),
    .Funct(Funct),
    .Operation(Operation)
  );
  
  initial
  begin
    ALUOp = 2'b00;
    #200 Funct = 4'b0000;
    #200 ALUOp = 2'b01;
    #200 Funct = 4'b0000;
    #200 ALUOp = 2'b10;
    #200 Funct = 4'b0000;
    #200 Funct = 4'b1000;
    #200 Funct = 4'b0111;
    #200 Funct = 4'b0110;
    #200 Funct = 4'b1111;
    #200 ALUOp = 2'b11;
  end
endmodule