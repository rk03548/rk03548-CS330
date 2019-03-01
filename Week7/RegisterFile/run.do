vlog registerFile.v tb.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/WriteData } \
{sim:/tb/RS1 } \
{sim:/tb/RS2 } \
{sim:/tb/RD } \
{sim:/tb/RegWrite } \
{sim:/tb/clk } \
{sim:/tb/reset } \
{sim:/tb/ReadData1 } \
{sim:/tb/ReadData2 }

run 1000ns