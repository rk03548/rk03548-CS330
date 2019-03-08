module tb
  (
  );
    reg [63:0] Inst_Addr;
    wire [31:0] Instruction;
    
    Instruction_Memory IM
    (
      .Inst_Addr(Inst_Addr),
      .Instruction(Instruction)
    );
    
    initial
    begin
      Inst_Addr = 64'd0;
      #200 Inst_Addr = 64'd4;
      #200 Inst_Addr = 64'd8;
      #200 Inst_Addr = 64'd12;
    end
    
endmodule