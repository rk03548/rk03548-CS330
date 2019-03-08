module tb
  (
  );
  
  reg clk;
  reg reset;
  wire [31:0] Instruction;
  
  Instruction_Fetch IF
  (
    .clk(clk),
    .reset(reset),
    .instruction(Instruction)
  );
  
  initial
    begin
      clk = 0;
      reset = 0;
    end
  always
  #100 clk = ~clk;
  
  initial
    begin
      #50 reset = 1;
      #100 reset = 0;
      #200 reset = 1;
      #50 reset = 0;
      #50 reset = 1;
      #100 reset = 0;
      #350 reset = 1;
      #100 reset = 0;
    end
endmodule