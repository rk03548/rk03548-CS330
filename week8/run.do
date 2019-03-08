vlog tb.v InstructionFetch.v InstructionMemory.v adder.v Program_Counter.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/clk } \
{sim:/tb/reset } \
{sim:/tb/Instruction }

run 1400ns