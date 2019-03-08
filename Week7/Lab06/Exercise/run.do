vlog tb.v InstructionMemory.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/Inst_Addr } \
{sim:/tb/Instruction } 

run 1000ns
