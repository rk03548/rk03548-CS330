module top
(
    input [5:0] a,
    input [5:0] b,
    input CarryIn,
    input [3:0] ALUOp,
    output [5:0] Result,
    output CarryOut6
);
    wire CarryOut1;
    wire CarryOut2;
    wire CarryOut3;
    wire CarryOut4;
    wire CarryOut5;
    
	ALU_1_Bit ALU1
	(
		.a(a[0]),
		.b(b[0]),
    .CarryIn(CarryIn),
    .ALUOp(ALUOp),
    .Result(Result[0]),
    .CarryOut(CarryOut1)
	);
	
	ALU_1_Bit ALU2
	(
		.a(a[1]),
		.b(b[1]),
    .CarryIn(CarryOut1),
    .ALUOp(ALUOp),
    .Result(Result[1]),
    .CarryOut(CarryOut2)
	);
	
	ALU_1_Bit ALU3
	(
		.a(a[2]),
		.b(b[2]),
    .CarryIn(CarryOut2),
    .ALUOp(ALUOp),
    .Result(Result[2]),
    .CarryOut(CarryOut3)
	);
	
	ALU_1_Bit ALU4
	(
		.a(a[3]),
		.b(b[3]),
    .CarryIn(CarryOut3),
    .ALUOp(ALUOp),
    .Result(Result[3]),
    .CarryOut(CarryOut4)
	);
	
	ALU_1_Bit ALU5
	(
		.a(a[4]),
		.b(b[4]),
    .CarryIn(CarryOut4),
    .ALUOp(ALUOp),
    .Result(Result[4]),
    .CarryOut(CarryOut5)
	);
	
	ALU_1_Bit ALU6
	(
		.a(a[5]),
		.b(b[5]),
    .CarryIn(CarryOut5),
    .ALUOp(ALUOp),
    .Result(Result[5]),
    .CarryOut(CarryOut6)
	);

/*
	initial
	begin
    a = 6'b000100;
    b = 6'b001000;
    CarryIn = 1'b1;
    ALUOp = 4'b0000;
    #300 ALUOp = 4'b0001;
    #300 ALUOp = 4'b0010;
    #300 ALUOp = 4'b0110;
    #300 ALUOp = 4'b1100;
  end
*/

endmodule