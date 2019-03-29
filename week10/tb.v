module tb
  (
  );
  reg clk;
  reg reset;
  
  RISC_V_Processor Processor
  (
    .clk(clk),
    .reset(reset)
  );
  always
  begin
    #200 clk = ~clk;
  end
  
  initial
  begin
    clk = 1'b0;
    reset = 1'b0;
    #900 reset = 1'b1; 
    #100 reset = 1'b0;
  end

endmodule