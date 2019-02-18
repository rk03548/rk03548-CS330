module tb
(

);
	reg [31:0] instruction;
  wire [63:0] imm_data;

	IDG IP
	(
		.instruction(instruction),
		.imm_data(imm_data)

	);

	initial
	begin
    instruction = {24'hFACADE,8'b10001010};
    #300 instruction = {24'hFACADE,8'b10111010};
    #300 instruction = {24'hFACADE,8'b11101010};
  end


endmodule