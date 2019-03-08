vlog tb.v registerFile.v InstructionParser.v top.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/instruction } \
{sim:/tb/ReadData1 } \
{sim:/tb/ReadData2 }

run 1000ns