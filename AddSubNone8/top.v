// test-harness module

module top(
	input clk
);

	reg				reset;
	reg		[5:0]	inc_reg;
	reg		[7:0]	init;
	wire	[7:0]	ctr_out;
	wire			inc = inc_reg[4];
	wire			we = inc_reg[5];
	integer			cycle;

	//
	// instantiate the device under test
	//
	updownnone_8bit ctr(
		.clk	(clk),
		.reset	(reset),
		.init	(init),
		.inc	(inc),
		.we	(we),
		.out	(ctr_out));
	
	initial begin
		reset = 1;
		cycle = 0;
		init = 6;
		inc_reg = 24;
	end

	always @(posedge clk) begin
		cycle = cycle + 1;
		reset <= (cycle > 0) ? 0 : 1;
		inc_reg <= inc_reg + 1;

		$display("cycle %04d - res %d we %d ctr %0d", cycle, reset, we, ctr_out);

		if (cycle > 100) $finish;
	end

endmodule
