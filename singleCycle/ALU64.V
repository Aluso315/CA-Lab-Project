module ALU64(
	input [63:0] a, b, [3:0] ALUOp,
	output reg zero, [63:0] Result
);
always@ *
	begin
		case(ALUOp[3:0])
		
		4'd0: 
		begin
		Result = a && b;
		end
		
		4'b0001: 
		begin
		Result = a || b;
		end
		
		4'b0010: 
		begin
		Result =  a + b;
		end
		
		4'b0110:
		begin
		Result = a-b;
		end
		endcase
	zero = Result? 0:1;
end

endmodule
