
`define ADD		4'b0000
`define SUB		4'b0001
`define AND		4'b0010
`define OR		4'b0011
`define PASS1		4'b0111
`define EQ		4'b1011

module alu16 (
	input   [3:0]   func,
	input   [15:0]  in1,
	input   [15:0]  in2,
	output  [15:0]  out
);

	wire	[15:0]	add_out =	in1 + in2;
	wire	[15:0]	sub_out =	// your code goes here
	wire	[15:0]	and_out =	// your code goes here
	wire	[15:0]	or_out =	// your code goes here
	wire	[15:0]	alu1_out =	// your code goes here
	wire	[15:0]	eq_out =	// your code goes here

	assign	out = (func == `ADD) ?	add_out	: 16'dZ;
	assign	out = (func == `SUB) ?	// your code goes here
	assign	out = (func == `AND) ?	// your code goes here
	assign	out = (func == `OR) ?	// your code goes here
	assign	out = (func == `PASS1)	// your code goes here
	assign	out = (func == `EQ)		// your code goes here

endmodule
