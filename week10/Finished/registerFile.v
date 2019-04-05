module registerFile
  (
    input [63:0] WriteData,
    input [4:0] RS1,
    input [4:0] RS2,
    input [4:0] RD,
    input RegWrite,
    input clk,
    input reset,
    output reg [63:0] ReadData1,
    output reg [63:0] ReadData2
  );
  
  reg [63:0] Registers[31:0];
  initial
  begin
    Registers[0] = 64'h0;
    Registers[1] = 64'd2;
    Registers[2] = 64'd40;
    Registers[3] = 64'd38;
    Registers[4] = 64'd100;
    Registers[5] = 64'd110;
    Registers[6] = 64'd500;
    Registers[7] = 64'd1000;
    Registers[8] = 64'd10000;
    Registers[9] = 64'd51;
    Registers[10] = 64'd10;
    Registers[11] = 64'd9000;
    Registers[12] = 64'd150;
    Registers[13] = 64'd200;
    Registers[14] = 64'd400;
    Registers[15] = 64'd10;
    Registers[16] = 64'd348;
    Registers[17] = 64'd73;
    Registers[18] = 64'd323;
    Registers[19] = 64'd402;
    Registers[20] = 64'd232;
    Registers[21] = 64'd21;
    Registers[22] = 64'd22;
    Registers[23] = 64'd23;
    Registers[24] = 64'd24;
    Registers[25] = 64'd25;
    Registers[26] = 64'd26;
    Registers[27] = 64'd27;
    Registers[28] = 64'd28;
    Registers[29] = 64'd29;
    Registers[30] = 64'd30;
    Registers[31] = 64'd31;
  end
  
  always@(posedge clk)
  begin
    if (RegWrite == 1'b1 && RD != 0)
      begin
        Registers[RD] = WriteData;
      end
  end
  
  always @(RS1 or RS2 or reset or clk)
  begin
    if (reset == 1'b1)
      begin
        ReadData1 = 64'b0;
        ReadData2 = 64'b0;
      end
    else
      begin
        ReadData1 = Registers[RS1];
        ReadData2 = Registers[RS2];
      end
  end
  
endmodule
  
    
    
    
    
    
    
    