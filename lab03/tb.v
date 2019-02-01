module tb
(

);
	reg [63:0] input_a;
	reg [63:0] input_b;
	reg select;
	wire[63:0] out;

	MUX m1
	(
		.a(input_a),
		.b(input_b),
		.sel(select),
		.data_out(out)
	);

	initial
	begin
	 input_a = 64'h00;
	 input_b = 64'hFF;
	 select = 1'b0;
	end

	always
	begin
	 #10 select = ~select;
	 #15 input_a[0] = ~input_a[0];
  end
	initial
	$monitor("Select = ", $time, " ----> Output = ", out);
endmodule