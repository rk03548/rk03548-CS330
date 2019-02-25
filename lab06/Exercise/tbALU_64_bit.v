module tb
(

);
    reg [63:0] a;
    reg [63:0] b;
    reg [3:0] operation;
    wire [63:0] Result;
    wire zero;
    
    ALU_64_Bit
    (
      .a(a),
      .b(b),
      .operation(operation),
      .Result(Result),
      .zero(zero)
    );
	

	initial
	begin
    a = 64'h13;
    b = 64'h20;
    operation = 4'b0000;
    #300 operation = 4'b0001;
    #300 operation = 4'b0010;
    #300 operation = 4'b0110;
    #300 operation = 4'b1100;
  end


endmodule