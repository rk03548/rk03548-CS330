module Data_Memory
  (
    input [63:0] Mem_Addr,
    input [63:0] WriteData,
    input clk,
    input memWrite,
    input memRead,
    output reg [63:0] Read_Data
  );
  
reg [7:0] bytes[15:0];
  initial
  begin
    bytes[0] = 8'b10000011;
    bytes[1] = 8'b00110100;
    bytes[2] = 8'b00000101;
    bytes[3] = 8'b00001111;
    bytes[4] = 8'b10110011;
    bytes[5] = 8'b10000100;
    bytes[6] = 8'b10011010;
    bytes[7] = 8'b00000000;
    bytes[8] = 8'b10010011;
    bytes[9] = 8'b10000100;
    bytes[10] = 8'b00010100;
    bytes[11] = 8'b00000000;
    bytes[12] = 8'b00100011;
    bytes[13] = 8'b00111000;
    bytes[14] = 8'b10010101;
    bytes[15] = 8'b00001110;
  end

  always @(memRead or posedge clk or Mem_Addr or memWrite)
    if (memRead == 1'b1)
      begin
        Read_Data[7:0] = bytes[Mem_Addr];

        Read_Data[15:8] = bytes[Mem_Addr+1];

        Read_Data[23:16] = bytes[Mem_Addr+2];

        Read_Data[31:24] = bytes[Mem_Addr+3];
        
        Read_Data[39:32] = bytes[Mem_Addr+4];

        Read_Data[47:40] = bytes[Mem_Addr+5];

        Read_Data[55:48] = bytes[Mem_Addr+6];

        Read_Data[63:56] = bytes[Mem_Addr+7];
      end
      
  always @(posedge clk)
    if (memWrite == 1'b1)
      begin
        bytes[Mem_Addr] = WriteData[7:0] ;

        bytes[Mem_Addr+1] = WriteData[15:8] ;

        bytes[Mem_Addr+2] = WriteData[23:16] ;

        bytes[Mem_Addr+3] = WriteData[31:24] ;
        
        bytes[Mem_Addr+4] = WriteData[39:32] ;

        bytes[Mem_Addr+5] = WriteData[47:40] ;

        bytes[Mem_Addr+6] = WriteData[55:48] ;

        bytes[Mem_Addr+7] = WriteData[63:56] ;
      end
endmodule
