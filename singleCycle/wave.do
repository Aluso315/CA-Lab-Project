onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /tb/clk
add wave -noupdate -radix unsigned /tb/reset
add wave -noupdate -divider PC
add wave -noupdate -radix unsigned /tb/rvp/PC_In
add wave -noupdate -radix unsigned /tb/rvp/PC_Out
add wave -noupdate -divider Ins_Parser
add wave -noupdate -radix binary /tb/rvp/Instruction
add wave -noupdate -radix unsigned /tb/rvp/rs1
add wave -noupdate -radix unsigned /tb/rvp/rs2
add wave -noupdate -radix unsigned /tb/rvp/opcode
add wave -noupdate -radix unsigned /tb/rvp/clk
add wave -noupdate -radix unsigned /tb/rvp/reset
add wave -noupdate -radix unsigned /tb/rvp/rd
add wave -noupdate -radix unsigned /tb/rvp/ReadData1
add wave -noupdate -radix unsigned /tb/rvp/ReadData2
add wave -noupdate -radix unsigned /tb/rvp/Result
add wave -noupdate -radix unsigned /tb/rvp/func3
add wave -noupdate -radix unsigned /tb/rvp/func7
add wave -noupdate -radix unsigned /tb/rvp/adder_out
add wave -noupdate -radix unsigned /tb/rvp/adder_b
add wave -noupdate -radix unsigned /tb/rvp/ALUOp
add wave -noupdate /tb/rvp/Branch
add wave -noupdate /tb/rvp/MemRead
add wave -noupdate /tb/rvp/MemWrite
add wave -noupdate /tb/rvp/MemtoReg
add wave -noupdate /tb/rvp/ALUSrc
add wave -noupdate /tb/rvp/RegWrite
add wave -noupdate /tb/rvp/imm_data
add wave -noupdate /tb/rvp/WriteData
add wave -noupdate /tb/rvp/Operation
add wave -noupdate /tb/rvp/b
add wave -noupdate /tb/rvp/z
add wave -noupdate /tb/rvp/adder_out2
add wave -noupdate /tb/rvp/mux_in
add wave -noupdate /tb/rvp/Read_Data
add wave -noupdate /tb/rvp/funct3
add wave -noupdate /tb/rvp/funct7
add wave -noupdate /tb/rvp/ALUsrc
add wave -noupdate /tb/rvp/pc/clk
add wave -noupdate /tb/rvp/pc/reset
add wave -noupdate /tb/rvp/pc/PC_In
add wave -noupdate /tb/rvp/pc/PC_Out
add wave -noupdate /tb/rvp/add/a
add wave -noupdate /tb/rvp/add/b
add wave -noupdate /tb/rvp/add/out
add wave -noupdate /tb/rvp/im/inst_address
add wave -noupdate /tb/rvp/im/instruction
add wave -noupdate /tb/rvp/ip/instruction
add wave -noupdate /tb/rvp/ip/opcode
add wave -noupdate /tb/rvp/ip/rd
add wave -noupdate /tb/rvp/ip/funct3
add wave -noupdate /tb/rvp/ip/rs1
add wave -noupdate /tb/rvp/ip/rs2
add wave -noupdate /tb/rvp/ip/funct7
add wave -noupdate /tb/rvp/cu/Opcode
add wave -noupdate /tb/rvp/cu/branch
add wave -noupdate /tb/rvp/cu/memread
add wave -noupdate /tb/rvp/cu/memwrite
add wave -noupdate /tb/rvp/cu/memtoreg
add wave -noupdate /tb/rvp/cu/ALUsrc
add wave -noupdate /tb/rvp/cu/regwrite
add wave -noupdate /tb/rvp/cu/ALUOp
add wave -noupdate /tb/rvp/imm/instruction
add wave -noupdate /tb/rvp/imm/imm_data
add wave -noupdate /tb/rvp/rf/writeData
add wave -noupdate /tb/rvp/rf/rs1
add wave -noupdate /tb/rvp/rf/rs2
add wave -noupdate /tb/rvp/rf/rd
add wave -noupdate /tb/rvp/rf/RegWrite
add wave -noupdate /tb/rvp/rf/clk
add wave -noupdate /tb/rvp/rf/reset
add wave -noupdate /tb/rvp/rf/ReadData1
add wave -noupdate /tb/rvp/rf/ReadData2
add wave -noupdate /tb/rvp/aluc/ALUOp
add wave -noupdate /tb/rvp/aluc/funct
add wave -noupdate /tb/rvp/aluc/operation
add wave -noupdate /tb/rvp/mux/sel
add wave -noupdate /tb/rvp/mux/a
add wave -noupdate /tb/rvp/mux/b
add wave -noupdate /tb/rvp/mux/data_out
add wave -noupdate /tb/rvp/alu/a
add wave -noupdate /tb/rvp/alu/b
add wave -noupdate /tb/rvp/alu/ALUOp
add wave -noupdate /tb/rvp/alu/zero
add wave -noupdate /tb/rvp/alu/Result
add wave -noupdate /tb/rvp/add2/a
add wave -noupdate /tb/rvp/add2/b
add wave -noupdate /tb/rvp/add2/out
add wave -noupdate /tb/rvp/mux2/sel
add wave -noupdate /tb/rvp/mux2/a
add wave -noupdate /tb/rvp/mux2/b
add wave -noupdate /tb/rvp/mux2/data_out
add wave -noupdate /tb/rvp/dm/mem_address
add wave -noupdate /tb/rvp/dm/write_data
add wave -noupdate /tb/rvp/dm/clk
add wave -noupdate /tb/rvp/dm/memWrite
add wave -noupdate /tb/rvp/dm/memRead
add wave -noupdate /tb/rvp/dm/read_data
add wave -noupdate /tb/rvp/mux3/sel
add wave -noupdate /tb/rvp/mux3/a
add wave -noupdate /tb/rvp/mux3/b
add wave -noupdate /tb/rvp/mux3/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {100 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {99 ns} {130 ns}
