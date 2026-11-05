//
// this is the old 32-bit up-counter code
// you need to create an 8-bit down counter
// that stops at zero
//
module countdown8 (
	input clk,
	input reset,
	input   [7:0] init,
	output  [7:0] out
);

	reg		[7:0]	counter;
	wire			min =		 // your code goes here
	wire	[7:0]	minus1 = 	 // your code goes here
	wire	[7:0]	satminus = // your code goes here
	wire	[7:0]	reg_in =	// your code goes here

	assign out = counter;

	always @ (posedge clk) begin
		counter <= reg_in;
	end

endmodule


