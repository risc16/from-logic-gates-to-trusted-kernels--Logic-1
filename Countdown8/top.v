// test-harness module

module top(
	input clk
);

	reg				reset;
	reg		[7:0]	init;
	wire	[7:0]	ctr_out;
	integer			cycle;

	//
	// instantiate the device under test
	//
	countdown8 ctr(
		.clk	(clk),
		.reset	(reset),
		.init	(init),
		.out	(ctr_out));
	
	initial begin
		reset = 1;
		cycle = 0;
		init = 11;
	end

	always @(posedge clk) begin
		cycle = cycle + 1;
		reset <= (cycle > 0) ? 0 : 1;

		$display("cycle %04d - res %d ctr %0d", cycle, reset, ctr_out);

		if (cycle > 150) $finish;
	end

endmodule
