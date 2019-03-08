module tb
  (
  );
  
    reg [31:0] instruction;
    wire [63:0] ReadData1;
    wire [63:0] ReadData2;
    
    top t
    (
      .instruction(instruction),
      .ReadData1(ReadData1),
      .ReadData2(ReadData2)
    );
    
    initial
      begin
        instruction = 32'd0;
        instruction[19:15] = 5'd24;
        instruction[24:20] = 5'd10;
        #300 instruction[19:15] = 5'd30;
        instruction[24:20] = 5'd5;
        #100 instruction[19:15] = 5'd20;
      end
      
endmodule