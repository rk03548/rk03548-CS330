module Program_Counter
  (
    input clk,
    input reset,
    input [63:0] PC_in,
    output reg [63:0] PC_out
  );
  initial
    PC_out = 64'd0;
  
  always@(posedge reset or posedge clk)
    if (reset == 1'b1)
      begin
        PC_out = 64'd0;
      end
    else
      begin
        PC_out = PC_in;
      end
      
endmodule 