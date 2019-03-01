module tb
  (
  );
  
    reg [63:0] WriteData;
    reg [4:0] RS1;
    reg [4:0] RS2;
    reg [4:0] RD;
    reg RegWrite;
    reg clk;
    reg reset;
    wire [63:0] ReadData1;
    wire [63:0] ReadData2;
    
    registerFile RF
    (
      .WriteData(WriteData),
      .RS1(RS1),
      .RS2(RS2),
      .RD(RD),
      .RegWrite(RegWrite),
      .clk(clk),
      .reset(reset),
      .ReadData1(ReadData1),
      .ReadData2(ReadData2)
    );
    
    initial
      begin
        clk = 1'b0;
        RegWrite = 1'b0;
        RD = 5'h9;
        RS1 = RD;
        RS2 = 5'h0;
        WriteData = 64'd100;
        reset = 1'b0;
      end
    
    always
    #100 clk = ~clk;
    
    initial
    begin
      #300 RegWrite = 1'b1;
      #150 RegWrite = 1'b0;
      WriteData = 64'd250;
      #100 RegWrite = 1'b1;
      #300 reset = 1'b1;
      #50 reset = 1'b0;
      #50
      RD = 5'd0;
      WriteData = 64'd100;
      RS1 = RD;
      
    end
endmodule     