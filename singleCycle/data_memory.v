module data_memory
(
	input [63:0] mem_address, [63:0] write_data,
	input clk, memWrite, memRead,
	output reg [63:0] read_data

);
reg [7:0] data_memory [63:0];
initial
	begin
		data_memory[0] = 8'b00110100;
		data_memory[1] = 8'b00110100;
		data_memory[2] = 8'b00000101;
		data_memory[3] = 8'b00001111;
		data_memory[4] = 8'b10110011;
		data_memory[5] = 8'b10000100;
		data_memory[6] = 8'b10011010;
		data_memory[7] = 8'b00000000;
		data_memory[8] = 8'b10010011;
		data_memory[9] = 8'b10000100;
		data_memory[10] = 8'b00010100;
		data_memory[11] = 8'b00000000;
		data_memory[12] = 8'b00100011;
		data_memory[13] = 8'b00111000;
		data_memory[14] = 8'b10010101;
		data_memory[15] = 8'b00001110;
		
		data_memory[16] = 8'b00110100;
		data_memory[17] = 8'b00110100;
		data_memory[18] = 8'b00000101;
		data_memory[19] = 8'b00001111;
		data_memory[20] = 8'b10110011;
		data_memory[21] = 8'b10000100;
		data_memory[22] = 8'b10011010;
		data_memory[23] = 8'b00000000;
		data_memory[24] = 8'b10010011;
		data_memory[25] = 8'b10000100;
		data_memory[26] = 8'b00010100;
		data_memory[27] = 8'b00000000;
		data_memory[28] = 8'b00100011;
		data_memory[29] = 8'b00111000;
		data_memory[30] = 8'b10010101;
		data_memory[31] = 8'b00001110;
		
		data_memory[32] = 8'b00110100;
		data_memory[33] = 8'b00110100;
		data_memory[34] = 8'b00000101;
		data_memory[35] = 8'b00001111;
		data_memory[36] = 8'b10110011;
		data_memory[37] = 8'b10000100;
		data_memory[38] = 8'b10011010;
		data_memory[39] = 8'b00000000;
		data_memory[40] = 8'b10010011;
		data_memory[41] = 8'b10000100;
		data_memory[42] = 8'b00010100;
		data_memory[43] = 8'b00000000;
		data_memory[44] = 8'b00100011;
		data_memory[45] = 8'b00111000;
		data_memory[46] = 8'b10010101;
		data_memory[47] = 8'b00001110;
		
		data_memory[48] = 8'b00110100;
		data_memory[49] = 8'b00110100;
		data_memory[50] = 8'b00000101;
		data_memory[51] = 8'b00001111;
		data_memory[52] = 8'b10110011;
		data_memory[53] = 8'b10000100;
		data_memory[54] = 8'b10011010;
		data_memory[55] = 8'b00000000;
		data_memory[56] = 8'b10010011;
		data_memory[57] = 8'b10000100;
		data_memory[58] = 8'b00010100;
		data_memory[59] = 8'b00000000;
		data_memory[60] = 8'b00100011;
		data_memory[61] = 8'b00111000;
		data_memory[62] = 8'b10010101;
		data_memory[63] = 8'b00001110;
	end
	
	always @ (posedge clk)
	begin
		if (memWrite)
			data_memory[mem_address] = write_data[7:0];
			data_memory[mem_address+1] = write_data[15:8];
			data_memory[mem_address+2] = write_data[23:16];
			data_memory[mem_address+3] = write_data[31:24];
			data_memory[mem_address+4] = write_data[39:32];
			data_memory[mem_address+5] = write_data[47:40];
			data_memory[mem_address+6] = write_data[55:48];
			data_memory[mem_address+7] = write_data[63:56];
			
	end
	always @ *
	begin
		if (memRead)
		begin
			read_data = {data_memory[mem_address+7], data_memory[mem_address+6],
			data_memory[mem_address+5], data_memory[mem_address+4], 
			data_memory[mem_address+3], data_memory[mem_address+2], 
			data_memory[mem_address+1], data_memory[mem_address]};
		end
	end
endmodule