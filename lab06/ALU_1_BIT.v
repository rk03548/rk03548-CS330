module ALU_1_Bit
  (
    input a,
    input b,
    input CarryIn,
    input [3:0] ALUOp,
    output reg Result,
    output reg CarryOut
  );
  
    wire Mux1out;
    wire Mux2out;
    
    assign Mux1out = ALUOp[3]? ~a : a;
    assign Mux2out = ALUOp[2]? ~b : b;
    
    always @(*)
    begin
      assign CarryOut = (Mux1out & CarryIn) | (Mux2out & CarryIn) | (Mux1out & Mux2out);
  
      if (ALUOp[1:0] == 2'b00)
        begin
          assign Result = Mux1out & Mux2out;
        end
      else if (ALUOp[1:0] == 2'b01)
        begin
          assign Result = Mux1out | Mux2out;
        end
      else if (ALUOp[1:0] == 2'b10)
        begin
          assign Result = (Mux1out & ~Mux2out & ~CarryIn) | (~Mux1out & Mux2out & ~CarryIn) | (~Mux1out & ~Mux2out & CarryIn) | (Mux1out & Mux2out & CarryIn);
        end
    end
endmodule