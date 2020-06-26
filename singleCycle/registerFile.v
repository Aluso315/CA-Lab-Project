module registerFile
(
	input [63:0] writeData, [4:0] rs1, [4:0] rs2, [4:0] rd, 
	input RegWrite, clk, reset,
	output reg [63:0] ReadData1, [63:0] ReadData2

);
reg [63:0] Registers [31:0];
initial
	begin
		Registers[0] = 64'd10;
		Registers[1] = 64'd9;
		Registers[2] = 64'd8;
		Registers[3] = 64'd7;
		Registers[4] = 64'd6;
		Registers[5] = 64'd5;
		Registers[6] = 64'd4;
		Registers[7] = 64'd3;
		Registers[8] = 64'd2;
		Registers[8] = 64'd1;
		Registers[10] = 64'd10;
		Registers[11] = 64'd1;
		Registers[12] = 64'd2;
		Registers[13] = 64'd3;
		Registers[14] = 64'd4;
		Registers[15] = 64'd5;
		Registers[16] = 64'd6;
		Registers[17] = 64'd7;
		Registers[18] = 64'd8;
		Registers[19] = 64'd9;
		Registers[20] = 64'd10;
		Registers[21] = 64'd11;
		Registers[22] = 64'd12;
		Registers[23] = 64'd13;
		Registers[24] = 64'd14;
		Registers[25] = 64'd15;
		Registers[26] = 64'd16;
		Registers[27] = 64'd17;
		Registers[28] = 64'd18;
		Registers[29] = 64'd19;
		Registers[30] = 64'd20;
		Registers[31] = 64'd0;
	end

	always @ (posedge clk)
	begin
		if (RegWrite)
			Registers[rd] = writeData;
			
	end
	always @ *
	begin
		if (reset)
		begin
			ReadData1 = 0;
			ReadData2 = 0;
		end
		else
		begin
			ReadData1 = Registers[rs1];
			ReadData2 = Registers[rs2];
		end
		
	end
endmodule