module tb
  (
  );
    reg [63:0] Mem_Addr;
    reg [63:0] WriteData;
    reg clk;
    reg memWrite;
    reg memRead;
    wire [63:0] Read_Data;
    
    Data_Memory DM
    (
      .Mem_Addr(Mem_Addr),
      .WriteData(WriteData),
      .clk(clk),
      .memWrite(memWrite),
      .memRead(memRead),
      .Read_Data(Read_Data)
    );
    initial
    clk = 1'b0;
    
    always
    #50 clk = ~clk;
    
    
    initial
    begin
      WriteData = 64'd100;
      memWrite = 1'b0;
      memRead = 1'b1;
      Mem_Addr = 64'd0;
      #200 Mem_Addr = 64'd8;
      #150 memWrite = 1'b1;
    end
    
endmodule