module top
  (
    input [31:0] instruction,
    output [63:0] ReadData1,
    output [63:0] ReadData2
  );
  
    wire [6:0] opcode;
    wire [4:0] rd;
    wire [2:0] funct3;
    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [6:0] funct7;
    
    wire [63:0] WriteData = 64'd0;
    wire RegWrite = 0;
    wire clk = 0;
    wire reset = 0;
    
    
    
  InstructionParser IP
  (
    .instruction(instruction),
    .rs1(rs1),
    .rs2(rs2),
    .opcode(opcode),
    .rd(rd),
    .funct3(funct3),
    .funct7(funct7)
  );
  
  registerFile RF
  (
    .RS1(rs1),
    .RS2(rs2),
    .ReadData1(ReadData1),
    .ReadData2(ReadData2),
    .RD(rd),
    .RegWrite(RegWrite),
    .clk(clk),
    .reset(reset),
    .WriteData(WriteData)
  );
  
endmodule