module updownnone_8bit(
	input			clk,
	input			reset,
	input			inc,
	input			we,
	input	[7:0]	init,
	output	[7:0]	out
);

	reg 	[7:0]	ctr;
	assign out = ctr;

	wire	[7:0]	ctr_in =	// your code here
	wire	[7:0]	add1 =  	// your code here
	wire	[7:0]	sub1 =  	// your code here
	wire	[7:0]	addsub_out;

	wire			do_increment = //your code here
	wire			do_decrement = //your code here
	wire			do_nothing = //your code here

	assign addsub_out = (do_increment) ? XXXXX : 8'dZ;
	assign addsub_out = (do_decrement) ? XXXXX : 8'dZ;
	assign addsub_out = (do_nothing) ? XXXXX : 8'dZ;

	always @(posedge clk) begin
		ctr <= ctr_in;
	end

endmodule

