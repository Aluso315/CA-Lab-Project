module program_counter(
	input clk, reset, [63:0] PC_In,
	output reg [63:0] PC_Out

);
	always @(*)
		begin
			if(reset)
				PC_Out = 0;
				
		end
		
	always @(posedge clk)
		begin
			if(~reset)
				PC_Out = PC_In;
				
		end
		
endmodule
		