module control_unit(
	input [6:0] Opcode,
	output reg branch, memread, memwrite, memtoreg, ALUsrc, regwrite, [1:0] ALUOp
);
	always@ (*)
	begin
		case({Opcode})
		7'b0110011:
		begin
			ALUsrc = 1'b0;
			memtoreg = 1'b0;
			regwrite = 1'b1;
			memread = 1'b0;
			memwrite = 1'b0;
			branch = 1'b0;
			ALUOp = 2'b10;
		end
		
		7'b0000011:
		begin
			ALUsrc = 1'b1;
			memtoreg = 1'b1;
			regwrite = 1'b1;
			memread = 1'b1;
			memwrite = 1'b0;
			branch = 1'b0;
			ALUOp = 2'b00;
		end
			
		7'b0100011:
		begin
			ALUsrc = 1'b1;
			memtoreg = 1'bx;
			regwrite = 1'b0;
			memread = 1'b0;
			memwrite = 1'b1;
			branch = 1'b0;
			ALUOp = 2'b00;
		end
			
		7'b1100011:
		begin
			ALUsrc = 1'b0;
			memtoreg = 1'bx;
			regwrite = 1'b0;
			memread = 1'b0;
			memwrite = 1'b0;
			branch = 1'b1;
			ALUOp = 2'b01;
		end
	endcase
	end		
endmodule		