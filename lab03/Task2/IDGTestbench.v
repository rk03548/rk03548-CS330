module tb
(

);
	reg [31:0] instruction;
  wire [63:0] imm_data;

	InstructionParser IP
	(
		.instruction(instruction),
		.imm_data(imm_data),

	);

	initial
  instruction = 32'h123ABCDF;

	initial
	$monitor("Select = ", $time, "imm_data = %d", imm_data);
endmodule