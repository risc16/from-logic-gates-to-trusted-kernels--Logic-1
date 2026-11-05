// test-harness module

module top(
	input clk
);

	reg		[15:0]	in1;
	reg		[15:0]	in2;
	reg		[3:0]	func;
	wire	[15:0]	alu_out;
	integer			cycle;

	//
	// instantiate the device under test
	//
	alu16 alu(
		.func	(func),
		.in1	(in1),
		.in2	(in2),
		.out	(alu_out));
	
	initial begin
		cycle = 0;
		in1 = 16'd9457;
		in2 = 16'd9457;
		func = 0;
	end

	always @(posedge clk) begin
		cycle = cycle + 1;

		func <= (func == 3) ? 7 : (func == 7) ? 11 : (func == 11) ? 0 : func + 1;
		in1 <= (func == 4'd11) ? in1 + 4747 : in1;
		in2 <= (func == 4'd11) ? in2 + 47598 : in2;

		$display("cycle %04d - func %d  in1 0x%x (%d)  in2 0x%x (%d)  out 0x%x (%d)", 
			cycle, func, in1, in1, in2, in2, alu_out, alu_out);

		if (cycle > 100) $finish;
	end

endmodule
