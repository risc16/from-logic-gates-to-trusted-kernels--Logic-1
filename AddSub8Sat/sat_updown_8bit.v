module sat_updown_8bit(
	input			clk,
	input			reset,
	input			inc,
	input	[7:0]	init,
	output	[7:0]	out
);
	reg 	[7:0]	ctr;
	assign out = ctr;

	wire			max = 		// your code here
	wire			min = 		// your code here
	wire	[7:0]	ctr_in =	// your code here
	wire	[7:0]	add1 =  	// your code here
	wire	[7:0]	sub1 =  	// your code here
	wire	[7:0]	add_out =	// your code here
	wire	[7:0]	sub_out =	// your code here
	wire	[7:0]	addsub_out =	// your code here

	always @(posedge clk) begin
		ctr <= ctr_in;
	end
endmodule

