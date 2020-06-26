module RISC_V_Processor
(
	input clk, reset
);

wire [63:0] PC_In, PC_Out;
wire [63:0] adder_b;
wire [63:0] adder_out;
wire [31:0] Instruction;
wire [6:0] opcode;
wire [4:0] rs1, rs2;
wire [4:0] rd;
wire [2:0] func3;
wire [6:0] func7;
wire [1:0] ALUOp;
wire Branch, MemRead, MemWrite, MemtoReg, ALUsrc, RegWrite;
wire [63:0] imm_data;
wire [63:0] WriteData;
wire [63:0] ReadData1, ReadData2;
wire [3:0] Operation;
wire [63:0] beta;
wire zero;
wire [63:0] Result;
wire [63:0] adder_out2;
//wire [63:0] mux_in;
wire [63:0] Read_Data;

assign adder_b = 64'd4;

program_counter pc(.clk(clk),.reset(reset),.PC_In(PC_In),.PC_Out(PC_Out));

adder add(.a(PC_Out), .b(adder_b), .out(adder_out));

instructionMemory im(.inst_address(PC_Out), .instruction(Instruction));

instruction_parser ip(.instruction(Instruction), .opcode(opcode), .rd(rd), .funct3(func3), .rs1(rs1), .rs2(rs2), .funct7(func7));

control_unit cu (.Opcode(opcode), .branch(Branch), .memread(MemRead), .memwrite(MemWrite), .memtoreg(MemtoReg), .ALUsrc(ALUsrc), .regwrite(RegWrite), .ALUOp(ALUOp));

imm_data_gen imm (.instruction(Instruction), .imm_data(imm_data));

registerFile rf (.writeData(WriteData), .rs1(rs1), .rs2(rs2), .rd(rd), .RegWrite(RegWrite), .clk(clk), .reset(reset), .ReadData1(ReadData1), .ReadData2(ReadData2));

ALU_control aluc(.ALUOp(ALUOp), .funct({Instruction[30],Instruction[14:12]}), .operation(Operation));

multiplexer mux( .sel(ALUsrc), .a(ReadData2), .b(imm_data), .data_out(beta));

ALU64 alu(.a(ReadData1), .b(beta), .ALUOp(Operation), .zero(zero), .Result(Result));

adder add2(.a(PC_Out), .b({imm_data[62:0], 1'b0}), .out(adder_out2));

multiplexer mux2( .sel(Branch & zero), .a(adder_out), .b(adder_out2), .data_out(PC_In));

data_memory dm(.clk(clk), .memWrite(MemWrite), .memRead(MemRead), .mem_address(Result), .write_data(ReadData2), .read_data(Read_Data));

multiplexer mux3( .sel(MemtoReg), .b(Read_Data), .a(Result), .data_out(WriteData));

endmodule
