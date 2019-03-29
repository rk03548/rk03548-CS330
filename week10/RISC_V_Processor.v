module RISC_V_Processor
  (
    input clk,
    input reset
  );
  wire [63:0] PC_out;
  wire [63:0] PC_in;
  wire [63:0] PC_adder_wire;
  wire [31:0] Instruction;
  wire [6:0] opcode;
  wire [4:0] rd;
  wire [2:0] funct3;
  wire [4:0] rs1;
  wire [4:0] rs2;
  wire [6:0] funct7;
  wire [63:0] ReadData1;
  wire [63:0] ReadData2;
  wire Branch;
  wire MemWrite;
  wire MemRead;
  wire RegWrite;
  wire MemtoReg;
  wire ALUSrc;
  wire [1:0] ALUOp;
  wire [63:0] imm_data;
  wire [63:0] data_out;
  wire [3:0] operation;
  wire [63:0] ALU_result;
  wire zero_wire;
  wire [63:0] Read_Data;
  wire [63:0] WriteData;
  wire [63:0] Branch_adder_wire;
  
  
  Program_Counter PC
  (
    .clk(clk),
    .reset(reset),
    .PC_in(PC_in),
    .PC_out(PC_out)
  );
  
  adder PC_Adder
  (
    .a(PC_out),
    .b(64'd4),
    .c(PC_adder_wire)
  );
  
  Instruction_Memory IM
  (
    .Inst_Addr(PC_out),
    .Instruction(Instruction)
  );
  
  InstructionParser IP
  (
    .instruction(Instruction),
    .opcode(opcode),
    .rd(rd),
    .funct3(funct3),
    .rs1(rs1),
    .rs2(rs2),
    .funct7(funct7)
  );
  
  registerFile RF
  (
    .WriteData(WriteData),
    .RS1(rs1),
    .RS2(rs2),
    .RD(rd),
    .RegWrite(RegWrite),
    .clk(clk),
    .reset(reset),
    .ReadData1(ReadData1),
    .ReadData2(ReadData2)
  );
  
  Control_Unit CU
  (
    .Opcode(opcode),
    .Branch(Branch),
    .MemWrite(MemWrite),
    .MemRead(MemRead),
    .RegWrite(RegWrite),
    .MemtoReg(MemtoReg),
    .ALUSrc(ALUSrc),
    .ALUOp(ALUOp)
  );
  
  IDG IDG
  (
    .instruction(Instruction),
    .imm_data(imm_data)
  );
  
  MUX ALU_MUX
  (
	 .a(ReadData2), 
	 .b(imm_data),
	 .sel(ALUSrc),
	 .data_out(data_out)
  );
  
  ALU_Control AC
  (
    .ALUOp(ALUOp),
    .Funct({Instruction[30],Instruction[14:12]}),
    .Operation(operation)
  );
  
  ALU_64_bit ALU
  (
    .a(ReadData1),
    .b(data_out),
    .operation(operation),
    .Result(ALU_result),
    .zero(zero_wire)
  );
  
  Data_Memory DM
  (
    .Mem_Addr(ALU_result),
    .WriteData(ReadData2),
    .clk(clk),
    .memWrite(MemWrite),
    .memRead(MemRead),
    .Read_Data(Read_Data)
  );

  MUX MEM_MUX
  (
	 .a(ALU_result), 
	 .b(Read_Data),
	 .sel(MemtoReg),
	 .data_out(WriteData)
  );
  
  adder BRANCH_Adder
  (
    .a(PC_out),
    .b(imm_data<<1),
    .c(Branch_adder_wire)
  );
  
  MUX BRANCH_MUX
  (
	 .a(PC_adder_wire), 
	 .b(Branch_adder_wire),
	 .sel(Branch & zero_wire),
	 .data_out(PC_in)
  );
  
endmodule
  
  
  
  