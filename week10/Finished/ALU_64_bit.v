module ALU_64_bit
  (
    input [63:0]a,
    input [63:0]b,
    input [3:0] operation,
    output reg [63:0] Result,
    output reg zero
  );
  
    always @(*)
    begin

      if (operation[1:0] == 2'b00)
        begin
          assign Result = (operation[3]? ~a:a) & (operation[2]? ~b:b);
        end
      else if (operation[1:0] == 2'b01)
        begin
          assign Result = (operation[3]? ~a:a) | (operation[2]? ~b:b);
        end
      else if (operation[1:0] == 2'b10)
        begin
          assign Result = (operation[3]? ~a:a) + (operation[2]? ~b:b);
        end
      zero = Result?0:1;
    end
endmodule
