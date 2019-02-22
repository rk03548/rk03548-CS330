module tb
(

);
    reg [5:0] a;
    reg [5:0] b;
    reg CarryIn;
    reg [3:0] ALUOp;
    wire [5:0] Result;
    wire CarryOut6;
    
    top t
    (
      .a(a),
      .b(b),
      .CarryIn(CarryIn),
      .ALUOp(ALUOp),
      .Result(Result),
      .CarryOut6(CarryOut6)
    );
	

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


endmodule