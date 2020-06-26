vlog adder.v multiplexer.v program_counter.v instructionMemory.v instruction_parser.v control_unit.v imm_data_gen.v registerFile.v ALU_control.v ALU64.v data_memory.v RISC_V_Processor.v tb.v

vsim -novopt work.tb

view wave
add wave -r /*


run 500ns