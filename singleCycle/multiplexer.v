module multiplexer
(
	input sel, [63:0] a, [63:0] b,
	output [63:0] data_out
);

assign data_out= sel? b:a;


endmodule