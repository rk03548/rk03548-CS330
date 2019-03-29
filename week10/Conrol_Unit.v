module Control_Unit
  (
    input [6:0] Opcode,
    output reg Branch,
    output reg MemWrite,
    output reg MemRead,
    output reg RegWrite,
    output reg MemtoReg,
    output reg ALUSrc,
    output reg [1:0] ALUOp
  );
  
  always@(Opcode)
  begin
    if (Opcode == 7'b0110011)
      begin
        Branch = 1'b0;
        MemWrite = 1'b0;
        MemRead = 1'b0;
        RegWrite = 1'b1;
        MemtoReg = 1'b0;
        ALUSrc = 1'b0;
        ALUOp = 2'b10;
      end
    else if (Opcode == 7'b0000011)
      begin
        Branch = 1'b0;
        MemWrite = 1'b0;
        MemRead = 1'b1;
        RegWrite = 1'b1;
        MemtoReg = 1'b1;
        ALUSrc = 1'b1;
        ALUOp = 2'b00;
      end
    else if (Opcode == 7'b0100011)
      begin
        Branch = 1'b0;
        MemWrite = 1'b1;
        MemRead = 1'b0;
        RegWrite = 1'b0;
        ALUSrc = 1'b1;
        ALUOp = 2'b00;
        MemtoReg = 1'b0;
      end
    else if (Opcode == 7'b1100011)
      begin
        Branch = 1'b1;
        MemWrite = 1'b0;
        MemRead = 1'b0;
        RegWrite = 1'b0;
        ALUSrc = 1'b0;
        ALUOp = 2'b01;
        MemtoReg = 1'b0;
      end
    else
      begin
        Branch = 1'b0;
        MemWrite = 1'b0;
        MemRead = 1'b0;
        RegWrite = 1'b0;
        ALUSrc = 1'b0;
        ALUOp = 2'b11;
        MemtoReg = 1'b0;
      end
  end

endmodule