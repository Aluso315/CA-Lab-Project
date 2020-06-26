module instructionMemory
(
	input [63:0] inst_address,
	output reg [31:0] instruction

);
reg [7:0] instMemory [15:0];
initial
	begin
		instMemory[0] = 8'b10000011;
		instMemory[1] = 8'b00110100;
		instMemory[2] = 8'b10000101;
		instMemory[3] = 8'b00000010;
		instMemory[4] = 8'b10110011;
		instMemory[5] = 8'b10000100;
		instMemory[6] = 8'b10011010;
		instMemory[7] = 8'b00000000;
		instMemory[8] = 8'b10010011;
		instMemory[9] = 8'b10000100;
		instMemory[10] = 8'b00010100;
		instMemory[11] = 8'b00000000;
		instMemory[12] = 8'b00100011;
		instMemory[13] = 8'b00110100;
		instMemory[14] = 8'b10010101;
		instMemory[15] = 8'b00000010;
	end
	
	always @ *
		begin
			instruction = {instMemory[inst_address+3], instMemory[inst_address+2], 
			instMemory[inst_address+1], instMemory[inst_address]};
		end
		
endmodule